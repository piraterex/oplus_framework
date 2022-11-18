.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final greylist-max-o TRANSACTION_abandonAudioFocus:I = 0x40

.field static final blacklist TRANSACTION_abandonAudioFocusForTest:I = 0x9c

.field static final blacklist TRANSACTION_addAssistantServicesUids:I = 0xca

.field static final greylist-max-o TRANSACTION_addMixForPolicy:I = 0x59

.field static final blacklist TRANSACTION_addSpatializerCompatibleAudioDevice:I = 0xb2

.field static final greylist-max-o TRANSACTION_adjustStreamVolume:I = 0x9

.field static final blacklist TRANSACTION_adjustStreamVolumeForUid:I = 0x8a

.field static final blacklist TRANSACTION_adjustStreamVolumeWithAttribution:I = 0xa

.field static final blacklist TRANSACTION_adjustSuggestedStreamVolumeForUid:I = 0x8b

.field static final blacklist TRANSACTION_areNavigationRepeatSoundEffectsEnabled:I = 0x94

.field static final blacklist TRANSACTION_cacheBinauralRecordParameters:I = 0x81

.field static final blacklist TRANSACTION_cacheParameters:I = 0x84

.field static final blacklist TRANSACTION_canBeSpatialized:I = 0xaa

.field static final blacklist TRANSACTION_cancelMuteAwaitConnection:I = 0xc3

.field static final blacklist TRANSACTION_clearPreferredDevicesForCapturePreset:I = 0x86

.field static final greylist-max-o TRANSACTION_disableSafeMediaVolume:I = 0x53

.field static final greylist-max-o TRANSACTION_dispatchFocusChange:I = 0x65

.field static final greylist-max-o TRANSACTION_forceRemoteSubmixFullVolume:I = 0xf

.field static final greylist-max-o TRANSACTION_forceVolumeControlStream:I = 0x46

.field static final blacklist TRANSACTION_getActiveAssistantServiceUids:I = 0xce

.field static final greylist-max-o TRANSACTION_getActivePlaybackConfigurations:I = 0x63

.field static final greylist-max-o TRANSACTION_getActiveRecordingConfigurations:I = 0x60

.field static final blacklist TRANSACTION_getActualHeadTrackingMode:I = 0xb7

.field static final blacklist TRANSACTION_getAdditionalOutputDeviceDelay:I = 0x99

.field static final blacklist TRANSACTION_getAllowedCapturePolicy:I = 0x78

.field static final blacklist TRANSACTION_getAssistantServicesUids:I = 0xcd

.field static final blacklist TRANSACTION_getAudioProductStrategies:I = 0x1f

.field static final blacklist TRANSACTION_getAudioVolumeGroups:I = 0x17

.field static final blacklist TRANSACTION_getAvailableCommunicationDeviceIds:I = 0x8f

.field static final blacklist TRANSACTION_getBleCgVolume:I = 0x13

.field static final blacklist TRANSACTION_getCommunicationDevice:I = 0x91

.field static final greylist-max-o TRANSACTION_getCurrentAudioFocus:I = 0x42

.field static final blacklist TRANSACTION_getDefaultVolumeInfo:I = 0xc0

.field static final blacklist TRANSACTION_getDesiredHeadTrackingMode:I = 0xb5

.field static final blacklist TRANSACTION_getDeviceMaskForStream:I = 0x8e

.field static final blacklist TRANSACTION_getDeviceVolumeBehavior:I = 0x7d

.field static final blacklist TRANSACTION_getDevicesForAttributes:I = 0x75

.field static final blacklist TRANSACTION_getDevicesForAttributesUnprotected:I = 0x76

.field static final blacklist TRANSACTION_getEncodedSurroundMode:I = 0x38

.field static final blacklist TRANSACTION_getFadeOutDurationOnFocusLossMillis:I = 0x9d

.field static final greylist-max-o TRANSACTION_getFocusRampTimeMs:I = 0x64

.field static final blacklist TRANSACTION_getFocusStack:I = 0xc8

.field static final blacklist TRANSACTION_getHalVersion:I = 0xd0

.field static final greylist-max-o TRANSACTION_getLastAudibleStreamVolume:I = 0x1c

.field static final blacklist TRANSACTION_getLastHfpScoVolume:I = 0x14

.field static final blacklist TRANSACTION_getMaxAdditionalOutputDeviceDelay:I = 0x9a

.field static final blacklist TRANSACTION_getMaxVolumeIndexForAttributes:I = 0x1a

.field static final blacklist TRANSACTION_getMinVolumeIndexForAttributes:I = 0x1b

.field static final greylist-max-o TRANSACTION_getMode:I = 0x2d

.field static final blacklist TRANSACTION_getMutingExpectedDevice:I = 0xc4

.field static final blacklist TRANSACTION_getParameters:I = 0x7f

.field static final blacklist TRANSACTION_getPreferredDevicesForCapturePreset:I = 0x87

.field static final blacklist TRANSACTION_getPreferredDevicesForStrategy:I = 0x74

.field static final blacklist TRANSACTION_getReportedSurroundFormats:I = 0x34

.field static final greylist-max-o TRANSACTION_getRingerModeExternal:I = 0x26

.field static final greylist-max-o TRANSACTION_getRingerModeInternal:I = 0x27

.field static final greylist-max-o TRANSACTION_getRingtonePlayer:I = 0x48

.field static final blacklist TRANSACTION_getSpatializerCompatibleAudioDevices:I = 0xb1

.field static final blacklist TRANSACTION_getSpatializerImmersiveAudioLevel:I = 0xa0

.field static final blacklist TRANSACTION_getSpatializerOutput:I = 0xbc

.field static final blacklist TRANSACTION_getSpatializerParameter:I = 0xbb

.field static final greylist-max-o TRANSACTION_getStreamMaxVolume:I = 0x16

.field static final greylist-max-o TRANSACTION_getStreamMinVolume:I = 0x15

.field static final greylist-max-o TRANSACTION_getStreamVolume:I = 0x12

.field static final blacklist TRANSACTION_getSupportedHeadTrackingModes:I = 0xb6

.field static final blacklist TRANSACTION_getSupportedSystemUsages:I = 0x1e

.field static final blacklist TRANSACTION_getSurroundFormats:I = 0x33

.field static final greylist-max-o TRANSACTION_getUiSoundsStreamType:I = 0x49

.field static final greylist-max-o TRANSACTION_getVibrateSetting:I = 0x2a

.field static final blacklist TRANSACTION_getVolumeIndexForAttributes:I = 0x19

.field static final blacklist TRANSACTION_handleBluetoothA2dpActiveDeviceChange:I = 0x4c

.field static final blacklist TRANSACTION_handleBluetoothActiveDeviceChanged:I = 0x67

.field static final blacklist TRANSACTION_handleVolumeKey:I = 0xd

.field static final blacklist TRANSACTION_hasHapticChannels:I = 0x70

.field static final blacklist TRANSACTION_hasHeadTracker:I = 0xa4

.field static final blacklist TRANSACTION_hasRegisteredDynamicPolicy:I = 0x5d

.field static final greylist-max-o TRANSACTION_isAudioServerRunning:I = 0x6b

.field static final greylist-max-o TRANSACTION_isBluetoothA2dpOn:I = 0x3e

.field static final greylist-max-o TRANSACTION_isBluetoothScoOn:I = 0x3c

.field static final blacklist TRANSACTION_isCallScreeningModeSupported:I = 0x71

.field static final greylist-max-o TRANSACTION_isCameraSoundForced:I = 0x4e

.field static final greylist-max-o TRANSACTION_isHdmiSystemAudioSupported:I = 0x55

.field static final blacklist TRANSACTION_isHeadTrackerAvailable:I = 0xa7

.field static final blacklist TRANSACTION_isHeadTrackerEnabled:I = 0xa6

.field static final blacklist TRANSACTION_isHomeSoundEffectEnabled:I = 0x96

.field static final greylist-max-o TRANSACTION_isMasterMute:I = 0x10

.field static final blacklist TRANSACTION_isMicrophoneMuted:I = 0x20

.field static final blacklist TRANSACTION_isMusicActive:I = 0x8d

.field static final blacklist TRANSACTION_isPstnCallAudioInterceptable:I = 0xc1

.field static final blacklist TRANSACTION_isSpatializerAvailable:I = 0xa2

.field static final blacklist TRANSACTION_isSpatializerAvailableForDevice:I = 0xa3

.field static final blacklist TRANSACTION_isSpatializerEnabled:I = 0xa1

.field static final greylist-max-o TRANSACTION_isSpeakerphoneOn:I = 0x3a

.field static final greylist-max-o TRANSACTION_isStreamAffectedByMute:I = 0x52

.field static final greylist-max-o TRANSACTION_isStreamAffectedByRingerMode:I = 0x51

.field static final greylist-max-o TRANSACTION_isStreamMute:I = 0xe

.field static final blacklist TRANSACTION_isSurroundFormatEnabled:I = 0x36

.field static final blacklist TRANSACTION_isUltrasoundSupported:I = 0x21

.field static final greylist-max-o TRANSACTION_isValidRingerMode:I = 0x28

.field static final blacklist TRANSACTION_isVolumeFixed:I = 0xbf

.field static final greylist-max-o TRANSACTION_loadSoundEffects:I = 0x30

.field static final blacklist TRANSACTION_muteAwaitConnection:I = 0xc2

.field static final greylist-max-o TRANSACTION_notifyVolumeControllerVisible:I = 0x50

.field static final blacklist TRANSACTION_oplusRegisterModeDispatcher:I = 0x82

.field static final greylist-max-o TRANSACTION_playSoundEffect:I = 0x2e

.field static final greylist-max-o TRANSACTION_playSoundEffectVolume:I = 0x2f

.field static final greylist-max-o TRANSACTION_playerAttributes:I = 0x2

.field static final greylist-max-o TRANSACTION_playerEvent:I = 0x3

.field static final greylist-max-o TRANSACTION_playerHasOpPlayAudio:I = 0x66

.field static final blacklist TRANSACTION_playerSessionId:I = 0x8

.field static final blacklist TRANSACTION_recenterHeadTracker:I = 0xb9

.field static final blacklist TRANSACTION_recorderEvent:I = 0x6

.field static final greylist-max-o TRANSACTION_registerAudioPolicy:I = 0x56

.field static final greylist-max-o TRANSACTION_registerAudioServerStateDispatcher:I = 0x69

.field static final blacklist TRANSACTION_registerCapturePresetDevicesRoleDispatcher:I = 0x88

.field static final blacklist TRANSACTION_registerCommunicationDeviceDispatcher:I = 0x92

.field static final blacklist TRANSACTION_registerDeviceVolumeBehaviorDispatcher:I = 0xc7

.field static final blacklist TRANSACTION_registerDeviceVolumeDispatcherForAbsoluteVolume:I = 0xcf

.field static final blacklist TRANSACTION_registerHeadToSoundstagePoseCallback:I = 0xaf

.field static final blacklist TRANSACTION_registerModeDispatcher:I = 0x9e

.field static final blacklist TRANSACTION_registerMuteAwaitConnectionDispatcher:I = 0xc5

.field static final greylist-max-o TRANSACTION_registerPlaybackCallback:I = 0x61

.field static final greylist-max-o TRANSACTION_registerRecordingCallback:I = 0x5e

.field static final blacklist TRANSACTION_registerSpatializerCallback:I = 0xab

.field static final blacklist TRANSACTION_registerSpatializerHeadTrackerAvailableCallback:I = 0xa8

.field static final blacklist TRANSACTION_registerSpatializerHeadTrackingCallback:I = 0xad

.field static final blacklist TRANSACTION_registerSpatializerOutputCallback:I = 0xbd

.field static final blacklist TRANSACTION_registerStrategyPreferredDevicesDispatcher:I = 0x79

.field static final greylist-max-o TRANSACTION_releasePlayer:I = 0x4

.field static final blacklist TRANSACTION_releaseRecorder:I = 0x7

.field static final greylist-max-o TRANSACTION_reloadAudioSettings:I = 0x32

.field static final blacklist TRANSACTION_removeAssistantServicesUids:I = 0xcb

.field static final greylist-max-o TRANSACTION_removeMixForPolicy:I = 0x5a

.field static final blacklist TRANSACTION_removePreferredDevicesForStrategy:I = 0x73

.field static final blacklist TRANSACTION_removeSpatializerCompatibleAudioDevice:I = 0xb3

.field static final blacklist TRANSACTION_removeUidDeviceAffinity:I = 0x6d

.field static final blacklist TRANSACTION_removeUserIdDeviceAffinity:I = 0x6f

.field static final greylist-max-o TRANSACTION_requestAudioFocus:I = 0x3f

.field static final blacklist TRANSACTION_requestAudioFocusForTest:I = 0x9b

.field static final blacklist TRANSACTION_sendFocusLoss:I = 0xc9

.field static final blacklist TRANSACTION_setActiveAssistantServiceUids:I = 0xcc

.field static final blacklist TRANSACTION_setAdditionalOutputDeviceDelay:I = 0x98

.field static final blacklist TRANSACTION_setAllowedCapturePolicy:I = 0x77

.field static final greylist-max-o TRANSACTION_setBluetoothA2dpOn:I = 0x3d

.field static final greylist-max-o TRANSACTION_setBluetoothScoOn:I = 0x3b

.field static final blacklist TRANSACTION_setCommunicationDevice:I = 0x90

.field static final blacklist TRANSACTION_setDesiredHeadTrackingMode:I = 0xb4

.field static final blacklist TRANSACTION_setDeviceVolumeBehavior:I = 0x7c

.field static final blacklist TRANSACTION_setEncodedSurroundMode:I = 0x37

.field static final greylist-max-o TRANSACTION_setFocusPropertiesForPolicy:I = 0x5b

.field static final greylist-max-o TRANSACTION_setFocusRequestResultFromExtPolicy:I = 0x68

.field static final greylist-max-o TRANSACTION_setHdmiSystemAudioSupported:I = 0x54

.field static final blacklist TRANSACTION_setHeadTrackerEnabled:I = 0xa5

.field static final blacklist TRANSACTION_setHomeSoundEffectEnabled:I = 0x97

.field static final blacklist TRANSACTION_setIPDeviceConnectionState:I = 0x4b

.field static final greylist-max-o TRANSACTION_setMasterMute:I = 0x11

.field static final greylist-max-o TRANSACTION_setMicrophoneMute:I = 0x22

.field static final blacklist TRANSACTION_setMicrophoneMuteFromSwitch:I = 0x23

.field static final greylist-max-o TRANSACTION_setMode:I = 0x2c

.field static final blacklist TRANSACTION_setMultiAudioFocusEnabled:I = 0x83

.field static final blacklist TRANSACTION_setNavigationRepeatSoundEffectsEnabled:I = 0x95

.field static final blacklist TRANSACTION_setParameters:I = 0x7e

.field static final blacklist TRANSACTION_setPreferredDevicesForCapturePreset:I = 0x85

.field static final blacklist TRANSACTION_setPreferredDevicesForStrategy:I = 0x72

.field static final greylist-max-o TRANSACTION_setRingerModeExternal:I = 0x24

.field static final greylist-max-o TRANSACTION_setRingerModeInternal:I = 0x25

.field static final greylist-max-o TRANSACTION_setRingtonePlayer:I = 0x47

.field static final blacklist TRANSACTION_setRttEnabled:I = 0x7b

.field static final blacklist TRANSACTION_setSpatializerEnabled:I = 0xa9

.field static final blacklist TRANSACTION_setSpatializerGlobalTransform:I = 0xb8

.field static final blacklist TRANSACTION_setSpatializerParameter:I = 0xba

.field static final greylist-max-o TRANSACTION_setSpeakerphoneOn:I = 0x39

.field static final greylist-max-o TRANSACTION_setStreamVolume:I = 0xb

.field static final blacklist TRANSACTION_setStreamVolumeForUid:I = 0x8c

.field static final blacklist TRANSACTION_setStreamVolumePermission:I = 0x80

.field static final blacklist TRANSACTION_setStreamVolumeWithAttribution:I = 0xc

.field static final blacklist TRANSACTION_setSupportedSystemUsages:I = 0x1d

.field static final blacklist TRANSACTION_setSurroundFormatEnabled:I = 0x35

.field static final blacklist TRANSACTION_setTestDeviceConnectionState:I = 0xc6

.field static final blacklist TRANSACTION_setUidDeviceAffinity:I = 0x6c

.field static final blacklist TRANSACTION_setUserIdDeviceAffinity:I = 0x6e

.field static final greylist-max-o TRANSACTION_setVibrateSetting:I = 0x29

.field static final greylist-max-o TRANSACTION_setVolumeController:I = 0x4f

.field static final blacklist TRANSACTION_setVolumeIndexForAttributes:I = 0x18

.field static final greylist-max-o TRANSACTION_setVolumePolicy:I = 0x5c

.field static final greylist-max-o TRANSACTION_setWiredDeviceConnectionState:I = 0x4a

.field static final greylist-max-o TRANSACTION_shouldVibrate:I = 0x2b

.field static final greylist-max-o TRANSACTION_startBluetoothSco:I = 0x43

.field static final greylist-max-o TRANSACTION_startBluetoothScoVirtualCall:I = 0x44

.field static final greylist-max-o TRANSACTION_startWatchingRoutes:I = 0x4d

.field static final greylist-max-o TRANSACTION_stopBluetoothSco:I = 0x45

.field static final greylist-max-o TRANSACTION_trackPlayer:I = 0x1

.field static final blacklist TRANSACTION_trackRecorder:I = 0x5

.field static final greylist-max-o TRANSACTION_unloadSoundEffects:I = 0x31

.field static final greylist-max-o TRANSACTION_unregisterAudioFocusClient:I = 0x41

.field static final blacklist TRANSACTION_unregisterAudioPolicy:I = 0x58

.field static final greylist-max-o TRANSACTION_unregisterAudioPolicyAsync:I = 0x57

.field static final greylist-max-o TRANSACTION_unregisterAudioServerStateDispatcher:I = 0x6a

.field static final blacklist TRANSACTION_unregisterCapturePresetDevicesRoleDispatcher:I = 0x89

.field static final blacklist TRANSACTION_unregisterCommunicationDeviceDispatcher:I = 0x93

.field static final blacklist TRANSACTION_unregisterHeadToSoundstagePoseCallback:I = 0xb0

.field static final blacklist TRANSACTION_unregisterModeDispatcher:I = 0x9f

.field static final greylist-max-o TRANSACTION_unregisterPlaybackCallback:I = 0x62

.field static final greylist-max-o TRANSACTION_unregisterRecordingCallback:I = 0x5f

.field static final blacklist TRANSACTION_unregisterSpatializerCallback:I = 0xac

.field static final blacklist TRANSACTION_unregisterSpatializerHeadTrackingCallback:I = 0xae

.field static final blacklist TRANSACTION_unregisterSpatializerOutputCallback:I = 0xbe

.field static final blacklist TRANSACTION_unregisterStrategyPreferredDevicesDispatcher:I = 0x7a


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 780
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 781
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 782
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 789
    if-nez p0, :cond_0

    .line 790
    const/4 v0, 0x0

    return-object v0

    .line 792
    :cond_0
    const-string v0, "android.media.IAudioService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 793
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_1

    .line 794
    move-object v1, v0

    check-cast v1, Landroid/media/IAudioService;

    return-object v1

    .line 796
    :cond_1
    new-instance v1, Landroid/media/IAudioService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 805
    packed-switch p0, :pswitch_data_0

    .line 1641
    const/4 v0, 0x0

    return-object v0

    .line 1637
    :pswitch_0
    const-string v0, "getHalVersion"

    return-object v0

    .line 1633
    :pswitch_1
    const-string v0, "registerDeviceVolumeDispatcherForAbsoluteVolume"

    return-object v0

    .line 1629
    :pswitch_2
    const-string v0, "getActiveAssistantServiceUids"

    return-object v0

    .line 1625
    :pswitch_3
    const-string v0, "getAssistantServicesUids"

    return-object v0

    .line 1621
    :pswitch_4
    const-string v0, "setActiveAssistantServiceUids"

    return-object v0

    .line 1617
    :pswitch_5
    const-string v0, "removeAssistantServicesUids"

    return-object v0

    .line 1613
    :pswitch_6
    const-string v0, "addAssistantServicesUids"

    return-object v0

    .line 1609
    :pswitch_7
    const-string v0, "sendFocusLoss"

    return-object v0

    .line 1605
    :pswitch_8
    const-string v0, "getFocusStack"

    return-object v0

    .line 1601
    :pswitch_9
    const-string v0, "registerDeviceVolumeBehaviorDispatcher"

    return-object v0

    .line 1597
    :pswitch_a
    const-string v0, "setTestDeviceConnectionState"

    return-object v0

    .line 1593
    :pswitch_b
    const-string v0, "registerMuteAwaitConnectionDispatcher"

    return-object v0

    .line 1589
    :pswitch_c
    const-string v0, "getMutingExpectedDevice"

    return-object v0

    .line 1585
    :pswitch_d
    const-string v0, "cancelMuteAwaitConnection"

    return-object v0

    .line 1581
    :pswitch_e
    const-string v0, "muteAwaitConnection"

    return-object v0

    .line 1577
    :pswitch_f
    const-string v0, "isPstnCallAudioInterceptable"

    return-object v0

    .line 1573
    :pswitch_10
    const-string v0, "getDefaultVolumeInfo"

    return-object v0

    .line 1569
    :pswitch_11
    const-string v0, "isVolumeFixed"

    return-object v0

    .line 1565
    :pswitch_12
    const-string/jumbo v0, "unregisterSpatializerOutputCallback"

    return-object v0

    .line 1561
    :pswitch_13
    const-string v0, "registerSpatializerOutputCallback"

    return-object v0

    .line 1557
    :pswitch_14
    const-string v0, "getSpatializerOutput"

    return-object v0

    .line 1553
    :pswitch_15
    const-string v0, "getSpatializerParameter"

    return-object v0

    .line 1549
    :pswitch_16
    const-string v0, "setSpatializerParameter"

    return-object v0

    .line 1545
    :pswitch_17
    const-string v0, "recenterHeadTracker"

    return-object v0

    .line 1541
    :pswitch_18
    const-string v0, "setSpatializerGlobalTransform"

    return-object v0

    .line 1537
    :pswitch_19
    const-string v0, "getActualHeadTrackingMode"

    return-object v0

    .line 1533
    :pswitch_1a
    const-string v0, "getSupportedHeadTrackingModes"

    return-object v0

    .line 1529
    :pswitch_1b
    const-string v0, "getDesiredHeadTrackingMode"

    return-object v0

    .line 1525
    :pswitch_1c
    const-string v0, "setDesiredHeadTrackingMode"

    return-object v0

    .line 1521
    :pswitch_1d
    const-string v0, "removeSpatializerCompatibleAudioDevice"

    return-object v0

    .line 1517
    :pswitch_1e
    const-string v0, "addSpatializerCompatibleAudioDevice"

    return-object v0

    .line 1513
    :pswitch_1f
    const-string v0, "getSpatializerCompatibleAudioDevices"

    return-object v0

    .line 1509
    :pswitch_20
    const-string/jumbo v0, "unregisterHeadToSoundstagePoseCallback"

    return-object v0

    .line 1505
    :pswitch_21
    const-string v0, "registerHeadToSoundstagePoseCallback"

    return-object v0

    .line 1501
    :pswitch_22
    const-string/jumbo v0, "unregisterSpatializerHeadTrackingCallback"

    return-object v0

    .line 1497
    :pswitch_23
    const-string v0, "registerSpatializerHeadTrackingCallback"

    return-object v0

    .line 1493
    :pswitch_24
    const-string/jumbo v0, "unregisterSpatializerCallback"

    return-object v0

    .line 1489
    :pswitch_25
    const-string v0, "registerSpatializerCallback"

    return-object v0

    .line 1485
    :pswitch_26
    const-string v0, "canBeSpatialized"

    return-object v0

    .line 1481
    :pswitch_27
    const-string v0, "setSpatializerEnabled"

    return-object v0

    .line 1477
    :pswitch_28
    const-string v0, "registerSpatializerHeadTrackerAvailableCallback"

    return-object v0

    .line 1473
    :pswitch_29
    const-string v0, "isHeadTrackerAvailable"

    return-object v0

    .line 1469
    :pswitch_2a
    const-string v0, "isHeadTrackerEnabled"

    return-object v0

    .line 1465
    :pswitch_2b
    const-string v0, "setHeadTrackerEnabled"

    return-object v0

    .line 1461
    :pswitch_2c
    const-string v0, "hasHeadTracker"

    return-object v0

    .line 1457
    :pswitch_2d
    const-string v0, "isSpatializerAvailableForDevice"

    return-object v0

    .line 1453
    :pswitch_2e
    const-string v0, "isSpatializerAvailable"

    return-object v0

    .line 1449
    :pswitch_2f
    const-string v0, "isSpatializerEnabled"

    return-object v0

    .line 1445
    :pswitch_30
    const-string v0, "getSpatializerImmersiveAudioLevel"

    return-object v0

    .line 1441
    :pswitch_31
    const-string/jumbo v0, "unregisterModeDispatcher"

    return-object v0

    .line 1437
    :pswitch_32
    const-string v0, "registerModeDispatcher"

    return-object v0

    .line 1433
    :pswitch_33
    const-string v0, "getFadeOutDurationOnFocusLossMillis"

    return-object v0

    .line 1429
    :pswitch_34
    const-string v0, "abandonAudioFocusForTest"

    return-object v0

    .line 1425
    :pswitch_35
    const-string v0, "requestAudioFocusForTest"

    return-object v0

    .line 1421
    :pswitch_36
    const-string v0, "getMaxAdditionalOutputDeviceDelay"

    return-object v0

    .line 1417
    :pswitch_37
    const-string v0, "getAdditionalOutputDeviceDelay"

    return-object v0

    .line 1413
    :pswitch_38
    const-string v0, "setAdditionalOutputDeviceDelay"

    return-object v0

    .line 1409
    :pswitch_39
    const-string v0, "setHomeSoundEffectEnabled"

    return-object v0

    .line 1405
    :pswitch_3a
    const-string v0, "isHomeSoundEffectEnabled"

    return-object v0

    .line 1401
    :pswitch_3b
    const-string v0, "setNavigationRepeatSoundEffectsEnabled"

    return-object v0

    .line 1397
    :pswitch_3c
    const-string v0, "areNavigationRepeatSoundEffectsEnabled"

    return-object v0

    .line 1393
    :pswitch_3d
    const-string/jumbo v0, "unregisterCommunicationDeviceDispatcher"

    return-object v0

    .line 1389
    :pswitch_3e
    const-string v0, "registerCommunicationDeviceDispatcher"

    return-object v0

    .line 1385
    :pswitch_3f
    const-string v0, "getCommunicationDevice"

    return-object v0

    .line 1381
    :pswitch_40
    const-string v0, "setCommunicationDevice"

    return-object v0

    .line 1377
    :pswitch_41
    const-string v0, "getAvailableCommunicationDeviceIds"

    return-object v0

    .line 1373
    :pswitch_42
    const-string v0, "getDeviceMaskForStream"

    return-object v0

    .line 1369
    :pswitch_43
    const-string v0, "isMusicActive"

    return-object v0

    .line 1365
    :pswitch_44
    const-string v0, "setStreamVolumeForUid"

    return-object v0

    .line 1361
    :pswitch_45
    const-string v0, "adjustSuggestedStreamVolumeForUid"

    return-object v0

    .line 1357
    :pswitch_46
    const-string v0, "adjustStreamVolumeForUid"

    return-object v0

    .line 1353
    :pswitch_47
    const-string/jumbo v0, "unregisterCapturePresetDevicesRoleDispatcher"

    return-object v0

    .line 1349
    :pswitch_48
    const-string v0, "registerCapturePresetDevicesRoleDispatcher"

    return-object v0

    .line 1345
    :pswitch_49
    const-string v0, "getPreferredDevicesForCapturePreset"

    return-object v0

    .line 1341
    :pswitch_4a
    const-string v0, "clearPreferredDevicesForCapturePreset"

    return-object v0

    .line 1337
    :pswitch_4b
    const-string v0, "setPreferredDevicesForCapturePreset"

    return-object v0

    .line 1333
    :pswitch_4c
    const-string v0, "cacheParameters"

    return-object v0

    .line 1329
    :pswitch_4d
    const-string v0, "setMultiAudioFocusEnabled"

    return-object v0

    .line 1325
    :pswitch_4e
    const-string v0, "oplusRegisterModeDispatcher"

    return-object v0

    .line 1321
    :pswitch_4f
    const-string v0, "cacheBinauralRecordParameters"

    return-object v0

    .line 1317
    :pswitch_50
    const-string v0, "setStreamVolumePermission"

    return-object v0

    .line 1313
    :pswitch_51
    const-string v0, "getParameters"

    return-object v0

    .line 1309
    :pswitch_52
    const-string v0, "setParameters"

    return-object v0

    .line 1305
    :pswitch_53
    const-string v0, "getDeviceVolumeBehavior"

    return-object v0

    .line 1301
    :pswitch_54
    const-string v0, "setDeviceVolumeBehavior"

    return-object v0

    .line 1297
    :pswitch_55
    const-string v0, "setRttEnabled"

    return-object v0

    .line 1293
    :pswitch_56
    const-string/jumbo v0, "unregisterStrategyPreferredDevicesDispatcher"

    return-object v0

    .line 1289
    :pswitch_57
    const-string v0, "registerStrategyPreferredDevicesDispatcher"

    return-object v0

    .line 1285
    :pswitch_58
    const-string v0, "getAllowedCapturePolicy"

    return-object v0

    .line 1281
    :pswitch_59
    const-string v0, "setAllowedCapturePolicy"

    return-object v0

    .line 1277
    :pswitch_5a
    const-string v0, "getDevicesForAttributesUnprotected"

    return-object v0

    .line 1273
    :pswitch_5b
    const-string v0, "getDevicesForAttributes"

    return-object v0

    .line 1269
    :pswitch_5c
    const-string v0, "getPreferredDevicesForStrategy"

    return-object v0

    .line 1265
    :pswitch_5d
    const-string v0, "removePreferredDevicesForStrategy"

    return-object v0

    .line 1261
    :pswitch_5e
    const-string v0, "setPreferredDevicesForStrategy"

    return-object v0

    .line 1257
    :pswitch_5f
    const-string v0, "isCallScreeningModeSupported"

    return-object v0

    .line 1253
    :pswitch_60
    const-string v0, "hasHapticChannels"

    return-object v0

    .line 1249
    :pswitch_61
    const-string v0, "removeUserIdDeviceAffinity"

    return-object v0

    .line 1245
    :pswitch_62
    const-string v0, "setUserIdDeviceAffinity"

    return-object v0

    .line 1241
    :pswitch_63
    const-string v0, "removeUidDeviceAffinity"

    return-object v0

    .line 1237
    :pswitch_64
    const-string v0, "setUidDeviceAffinity"

    return-object v0

    .line 1233
    :pswitch_65
    const-string v0, "isAudioServerRunning"

    return-object v0

    .line 1229
    :pswitch_66
    const-string/jumbo v0, "unregisterAudioServerStateDispatcher"

    return-object v0

    .line 1225
    :pswitch_67
    const-string v0, "registerAudioServerStateDispatcher"

    return-object v0

    .line 1221
    :pswitch_68
    const-string v0, "setFocusRequestResultFromExtPolicy"

    return-object v0

    .line 1217
    :pswitch_69
    const-string v0, "handleBluetoothActiveDeviceChanged"

    return-object v0

    .line 1213
    :pswitch_6a
    const-string v0, "playerHasOpPlayAudio"

    return-object v0

    .line 1209
    :pswitch_6b
    const-string v0, "dispatchFocusChange"

    return-object v0

    .line 1205
    :pswitch_6c
    const-string v0, "getFocusRampTimeMs"

    return-object v0

    .line 1201
    :pswitch_6d
    const-string v0, "getActivePlaybackConfigurations"

    return-object v0

    .line 1197
    :pswitch_6e
    const-string/jumbo v0, "unregisterPlaybackCallback"

    return-object v0

    .line 1193
    :pswitch_6f
    const-string v0, "registerPlaybackCallback"

    return-object v0

    .line 1189
    :pswitch_70
    const-string v0, "getActiveRecordingConfigurations"

    return-object v0

    .line 1185
    :pswitch_71
    const-string/jumbo v0, "unregisterRecordingCallback"

    return-object v0

    .line 1181
    :pswitch_72
    const-string v0, "registerRecordingCallback"

    return-object v0

    .line 1177
    :pswitch_73
    const-string v0, "hasRegisteredDynamicPolicy"

    return-object v0

    .line 1173
    :pswitch_74
    const-string v0, "setVolumePolicy"

    return-object v0

    .line 1169
    :pswitch_75
    const-string v0, "setFocusPropertiesForPolicy"

    return-object v0

    .line 1165
    :pswitch_76
    const-string v0, "removeMixForPolicy"

    return-object v0

    .line 1161
    :pswitch_77
    const-string v0, "addMixForPolicy"

    return-object v0

    .line 1157
    :pswitch_78
    const-string/jumbo v0, "unregisterAudioPolicy"

    return-object v0

    .line 1153
    :pswitch_79
    const-string/jumbo v0, "unregisterAudioPolicyAsync"

    return-object v0

    .line 1149
    :pswitch_7a
    const-string v0, "registerAudioPolicy"

    return-object v0

    .line 1145
    :pswitch_7b
    const-string v0, "isHdmiSystemAudioSupported"

    return-object v0

    .line 1141
    :pswitch_7c
    const-string v0, "setHdmiSystemAudioSupported"

    return-object v0

    .line 1137
    :pswitch_7d
    const-string v0, "disableSafeMediaVolume"

    return-object v0

    .line 1133
    :pswitch_7e
    const-string v0, "isStreamAffectedByMute"

    return-object v0

    .line 1129
    :pswitch_7f
    const-string v0, "isStreamAffectedByRingerMode"

    return-object v0

    .line 1125
    :pswitch_80
    const-string v0, "notifyVolumeControllerVisible"

    return-object v0

    .line 1121
    :pswitch_81
    const-string v0, "setVolumeController"

    return-object v0

    .line 1117
    :pswitch_82
    const-string v0, "isCameraSoundForced"

    return-object v0

    .line 1113
    :pswitch_83
    const-string v0, "startWatchingRoutes"

    return-object v0

    .line 1109
    :pswitch_84
    const-string v0, "handleBluetoothA2dpActiveDeviceChange"

    return-object v0

    .line 1105
    :pswitch_85
    const-string v0, "setIPDeviceConnectionState"

    return-object v0

    .line 1101
    :pswitch_86
    const-string v0, "setWiredDeviceConnectionState"

    return-object v0

    .line 1097
    :pswitch_87
    const-string v0, "getUiSoundsStreamType"

    return-object v0

    .line 1093
    :pswitch_88
    const-string v0, "getRingtonePlayer"

    return-object v0

    .line 1089
    :pswitch_89
    const-string v0, "setRingtonePlayer"

    return-object v0

    .line 1085
    :pswitch_8a
    const-string v0, "forceVolumeControlStream"

    return-object v0

    .line 1081
    :pswitch_8b
    const-string v0, "stopBluetoothSco"

    return-object v0

    .line 1077
    :pswitch_8c
    const-string v0, "startBluetoothScoVirtualCall"

    return-object v0

    .line 1073
    :pswitch_8d
    const-string v0, "startBluetoothSco"

    return-object v0

    .line 1069
    :pswitch_8e
    const-string v0, "getCurrentAudioFocus"

    return-object v0

    .line 1065
    :pswitch_8f
    const-string/jumbo v0, "unregisterAudioFocusClient"

    return-object v0

    .line 1061
    :pswitch_90
    const-string v0, "abandonAudioFocus"

    return-object v0

    .line 1057
    :pswitch_91
    const-string v0, "requestAudioFocus"

    return-object v0

    .line 1053
    :pswitch_92
    const-string v0, "isBluetoothA2dpOn"

    return-object v0

    .line 1049
    :pswitch_93
    const-string v0, "setBluetoothA2dpOn"

    return-object v0

    .line 1045
    :pswitch_94
    const-string v0, "isBluetoothScoOn"

    return-object v0

    .line 1041
    :pswitch_95
    const-string v0, "setBluetoothScoOn"

    return-object v0

    .line 1037
    :pswitch_96
    const-string v0, "isSpeakerphoneOn"

    return-object v0

    .line 1033
    :pswitch_97
    const-string v0, "setSpeakerphoneOn"

    return-object v0

    .line 1029
    :pswitch_98
    const-string v0, "getEncodedSurroundMode"

    return-object v0

    .line 1025
    :pswitch_99
    const-string v0, "setEncodedSurroundMode"

    return-object v0

    .line 1021
    :pswitch_9a
    const-string v0, "isSurroundFormatEnabled"

    return-object v0

    .line 1017
    :pswitch_9b
    const-string v0, "setSurroundFormatEnabled"

    return-object v0

    .line 1013
    :pswitch_9c
    const-string v0, "getReportedSurroundFormats"

    return-object v0

    .line 1009
    :pswitch_9d
    const-string v0, "getSurroundFormats"

    return-object v0

    .line 1005
    :pswitch_9e
    const-string v0, "reloadAudioSettings"

    return-object v0

    .line 1001
    :pswitch_9f
    const-string/jumbo v0, "unloadSoundEffects"

    return-object v0

    .line 997
    :pswitch_a0
    const-string v0, "loadSoundEffects"

    return-object v0

    .line 993
    :pswitch_a1
    const-string v0, "playSoundEffectVolume"

    return-object v0

    .line 989
    :pswitch_a2
    const-string v0, "playSoundEffect"

    return-object v0

    .line 985
    :pswitch_a3
    const-string v0, "getMode"

    return-object v0

    .line 981
    :pswitch_a4
    const-string v0, "setMode"

    return-object v0

    .line 977
    :pswitch_a5
    const-string v0, "shouldVibrate"

    return-object v0

    .line 973
    :pswitch_a6
    const-string v0, "getVibrateSetting"

    return-object v0

    .line 969
    :pswitch_a7
    const-string v0, "setVibrateSetting"

    return-object v0

    .line 965
    :pswitch_a8
    const-string v0, "isValidRingerMode"

    return-object v0

    .line 961
    :pswitch_a9
    const-string v0, "getRingerModeInternal"

    return-object v0

    .line 957
    :pswitch_aa
    const-string v0, "getRingerModeExternal"

    return-object v0

    .line 953
    :pswitch_ab
    const-string v0, "setRingerModeInternal"

    return-object v0

    .line 949
    :pswitch_ac
    const-string v0, "setRingerModeExternal"

    return-object v0

    .line 945
    :pswitch_ad
    const-string v0, "setMicrophoneMuteFromSwitch"

    return-object v0

    .line 941
    :pswitch_ae
    const-string v0, "setMicrophoneMute"

    return-object v0

    .line 937
    :pswitch_af
    const-string v0, "isUltrasoundSupported"

    return-object v0

    .line 933
    :pswitch_b0
    const-string v0, "isMicrophoneMuted"

    return-object v0

    .line 929
    :pswitch_b1
    const-string v0, "getAudioProductStrategies"

    return-object v0

    .line 925
    :pswitch_b2
    const-string v0, "getSupportedSystemUsages"

    return-object v0

    .line 921
    :pswitch_b3
    const-string v0, "setSupportedSystemUsages"

    return-object v0

    .line 917
    :pswitch_b4
    const-string v0, "getLastAudibleStreamVolume"

    return-object v0

    .line 913
    :pswitch_b5
    const-string v0, "getMinVolumeIndexForAttributes"

    return-object v0

    .line 909
    :pswitch_b6
    const-string v0, "getMaxVolumeIndexForAttributes"

    return-object v0

    .line 905
    :pswitch_b7
    const-string v0, "getVolumeIndexForAttributes"

    return-object v0

    .line 901
    :pswitch_b8
    const-string v0, "setVolumeIndexForAttributes"

    return-object v0

    .line 897
    :pswitch_b9
    const-string v0, "getAudioVolumeGroups"

    return-object v0

    .line 893
    :pswitch_ba
    const-string v0, "getStreamMaxVolume"

    return-object v0

    .line 889
    :pswitch_bb
    const-string v0, "getStreamMinVolume"

    return-object v0

    .line 885
    :pswitch_bc
    const-string v0, "getLastHfpScoVolume"

    return-object v0

    .line 881
    :pswitch_bd
    const-string v0, "getBleCgVolume"

    return-object v0

    .line 877
    :pswitch_be
    const-string v0, "getStreamVolume"

    return-object v0

    .line 873
    :pswitch_bf
    const-string v0, "setMasterMute"

    return-object v0

    .line 869
    :pswitch_c0
    const-string v0, "isMasterMute"

    return-object v0

    .line 865
    :pswitch_c1
    const-string v0, "forceRemoteSubmixFullVolume"

    return-object v0

    .line 861
    :pswitch_c2
    const-string v0, "isStreamMute"

    return-object v0

    .line 857
    :pswitch_c3
    const-string v0, "handleVolumeKey"

    return-object v0

    .line 853
    :pswitch_c4
    const-string v0, "setStreamVolumeWithAttribution"

    return-object v0

    .line 849
    :pswitch_c5
    const-string v0, "setStreamVolume"

    return-object v0

    .line 845
    :pswitch_c6
    const-string v0, "adjustStreamVolumeWithAttribution"

    return-object v0

    .line 841
    :pswitch_c7
    const-string v0, "adjustStreamVolume"

    return-object v0

    .line 837
    :pswitch_c8
    const-string v0, "playerSessionId"

    return-object v0

    .line 833
    :pswitch_c9
    const-string v0, "releaseRecorder"

    return-object v0

    .line 829
    :pswitch_ca
    const-string v0, "recorderEvent"

    return-object v0

    .line 825
    :pswitch_cb
    const-string/jumbo v0, "trackRecorder"

    return-object v0

    .line 821
    :pswitch_cc
    const-string v0, "releasePlayer"

    return-object v0

    .line 817
    :pswitch_cd
    const-string v0, "playerEvent"

    return-object v0

    .line 813
    :pswitch_ce
    const-string v0, "playerAttributes"

    return-object v0

    .line 809
    :pswitch_cf
    const-string/jumbo v0, "trackPlayer"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 800
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 7456
    const/16 v0, 0xcf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 1648
    invoke-static {p1}, Landroid/media/IAudioService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 1652
    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const-string v15, "android.media.IAudioService"

    .line 1653
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v12, v10, :cond_0

    const v0, 0xffffff

    if-gt v12, v0, :cond_0

    .line 1654
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1656
    :cond_0
    packed-switch v12, :pswitch_data_0

    .line 1664
    packed-switch v12, :pswitch_data_1

    .line 3752
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1660
    :pswitch_0
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1661
    return v10

    .line 3745
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getHalVersion()Ljava/lang/String;

    move-result-object v0

    .line 3746
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3747
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3748
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3727
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 3729
    .local v7, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioDeviceVolumeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioDeviceVolumeDispatcher;

    move-result-object v8

    .line 3731
    .local v8, "_arg1":Landroid/media/IAudioDeviceVolumeDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3733
    .local v9, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/media/AudioDeviceAttributes;

    .line 3735
    .local v16, "_arg3":Landroid/media/AudioDeviceAttributes;
    sget-object v0, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 3737
    .local v17, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 3738
    .local v18, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3739
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/media/IAudioService$Stub;->registerDeviceVolumeDispatcherForAbsoluteVolume(ZLandroid/media/IAudioDeviceVolumeDispatcher;Ljava/lang/String;Landroid/media/AudioDeviceAttributes;Ljava/util/List;Z)V

    .line 3740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3741
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3719
    .end local v7    # "_arg0":Z
    .end local v8    # "_arg1":Landroid/media/IAudioDeviceVolumeDispatcher;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Landroid/media/AudioDeviceAttributes;
    .end local v17    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    .end local v18    # "_arg5":Z
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActiveAssistantServiceUids()[I

    move-result-object v0

    .line 3720
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3721
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3722
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3712
    .end local v0    # "_result":[I
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAssistantServicesUids()[I

    move-result-object v0

    .line 3713
    .restart local v0    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3714
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3715
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3704
    .end local v0    # "_result":[I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 3705
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3706
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setActiveAssistantServiceUids([I)V

    .line 3707
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3708
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3695
    .end local v0    # "_arg0":[I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 3696
    .restart local v0    # "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3697
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->removeAssistantServicesUids([I)V

    .line 3698
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3699
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3686
    .end local v0    # "_arg0":[I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 3687
    .restart local v0    # "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3688
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->addAssistantServicesUids([I)V

    .line 3689
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3690
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3674
    .end local v0    # "_arg0":[I
    :pswitch_8
    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFocusInfo;

    .line 3676
    .local v0, "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3677
    .local v1, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3678
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->sendFocusLoss(Landroid/media/AudioFocusInfo;Landroid/media/audiopolicy/IAudioPolicyCallback;)Z

    move-result v2

    .line 3679
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3680
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3681
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3666
    .end local v0    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getFocusStack()Ljava/util/List;

    move-result-object v0

    .line 3667
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3668
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3669
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3656
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3658
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IDeviceVolumeBehaviorDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IDeviceVolumeBehaviorDispatcher;

    move-result-object v1

    .line 3659
    .local v1, "_arg1":Landroid/media/IDeviceVolumeBehaviorDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3660
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->registerDeviceVolumeBehaviorDispatcher(ZLandroid/media/IDeviceVolumeBehaviorDispatcher;)V

    .line 3661
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3662
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3645
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/media/IDeviceVolumeBehaviorDispatcher;
    :pswitch_b
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3647
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3648
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3649
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;Z)V

    .line 3650
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3651
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3634
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_arg1":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMuteAwaitConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMuteAwaitConnectionCallback;

    move-result-object v0

    .line 3636
    .local v0, "_arg0":Landroid/media/IMuteAwaitConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3637
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3638
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->registerMuteAwaitConnectionDispatcher(Landroid/media/IMuteAwaitConnectionCallback;Z)V

    .line 3639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3640
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3626
    .end local v0    # "_arg0":Landroid/media/IMuteAwaitConnectionCallback;
    .end local v1    # "_arg1":Z
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    .line 3627
    .local v0, "_result":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3628
    invoke-virtual {v14, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3629
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3619
    .end local v0    # "_result":Landroid/media/AudioDeviceAttributes;
    :pswitch_e
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3620
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3621
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->cancelMuteAwaitConnection(Landroid/media/AudioDeviceAttributes;)V

    .line 3622
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3607
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 3609
    .local v0, "_arg0":[I
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 3611
    .local v1, "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 3612
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3613
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->muteAwaitConnection([ILandroid/media/AudioDeviceAttributes;J)V

    .line 3614
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3599
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_arg2":J
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isPstnCallAudioInterceptable()Z

    move-result v0

    .line 3600
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3601
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3602
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3592
    .end local v0    # "_result":Z
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getDefaultVolumeInfo()Landroid/media/VolumeInfo;

    move-result-object v0

    .line 3593
    .local v0, "_result":Landroid/media/VolumeInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3594
    invoke-virtual {v14, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3595
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3585
    .end local v0    # "_result":Landroid/media/VolumeInfo;
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isVolumeFixed()Z

    move-result v0

    .line 3586
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3587
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3588
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3577
    .end local v0    # "_result":Z
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerOutputCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerOutputCallback;

    move-result-object v0

    .line 3578
    .local v0, "_arg0":Landroid/media/ISpatializerOutputCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3579
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V

    .line 3580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3581
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3568
    .end local v0    # "_arg0":Landroid/media/ISpatializerOutputCallback;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerOutputCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerOutputCallback;

    move-result-object v0

    .line 3569
    .restart local v0    # "_arg0":Landroid/media/ISpatializerOutputCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3570
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V

    .line 3571
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3572
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3560
    .end local v0    # "_arg0":Landroid/media/ISpatializerOutputCallback;
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSpatializerOutput()I

    move-result v0

    .line 3561
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3562
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3563
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3549
    .end local v0    # "_result":I
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3551
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 3552
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3553
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->getSpatializerParameter(I[B)V

    .line 3554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3555
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3556
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3538
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3540
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 3541
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3542
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setSpatializerParameter(I[B)V

    .line 3543
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3544
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3532
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->recenterHeadTracker()V

    .line 3533
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3525
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    .line 3526
    .local v0, "_arg0":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3527
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setSpatializerGlobalTransform([F)V

    .line 3528
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3517
    .end local v0    # "_arg0":[F
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActualHeadTrackingMode()I

    move-result v0

    .line 3518
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3519
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3520
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3510
    .end local v0    # "_result":I
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSupportedHeadTrackingModes()[I

    move-result-object v0

    .line 3511
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3512
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3513
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3503
    .end local v0    # "_result":[I
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getDesiredHeadTrackingMode()I

    move-result v0

    .line 3504
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3505
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3506
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3495
    .end local v0    # "_result":I
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3496
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3497
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setDesiredHeadTrackingMode(I)V

    .line 3498
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3499
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3486
    .end local v0    # "_arg0":I
    :pswitch_1e
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3487
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3488
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->removeSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    .line 3489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3490
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3477
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    :pswitch_1f
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3478
    .restart local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3479
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->addSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    .line 3480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3481
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3469
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSpatializerCompatibleAudioDevices()Ljava/util/List;

    move-result-object v0

    .line 3470
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3471
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3472
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3461
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    move-result-object v0

    .line 3462
    .local v0, "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3463
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V

    .line 3464
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3465
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3452
    .end local v0    # "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    move-result-object v0

    .line 3453
    .restart local v0    # "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3454
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V

    .line 3455
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3456
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3443
    .end local v0    # "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingModeCallback;

    move-result-object v0

    .line 3444
    .local v0, "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3445
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V

    .line 3446
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3447
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3434
    .end local v0    # "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingModeCallback;

    move-result-object v0

    .line 3435
    .restart local v0    # "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3436
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V

    .line 3437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3438
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3425
    .end local v0    # "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerCallback;

    move-result-object v0

    .line 3426
    .local v0, "_arg0":Landroid/media/ISpatializerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3427
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterSpatializerCallback(Landroid/media/ISpatializerCallback;)V

    .line 3428
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3429
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3416
    .end local v0    # "_arg0":Landroid/media/ISpatializerCallback;
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerCallback;

    move-result-object v0

    .line 3417
    .restart local v0    # "_arg0":Landroid/media/ISpatializerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3418
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerSpatializerCallback(Landroid/media/ISpatializerCallback;)V

    .line 3419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3420
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3404
    .end local v0    # "_arg0":Landroid/media/ISpatializerCallback;
    :pswitch_27
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 3406
    .local v0, "_arg0":Landroid/media/AudioAttributes;
    sget-object v1, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFormat;

    .line 3407
    .local v1, "_arg1":Landroid/media/AudioFormat;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3408
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result v2

    .line 3409
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3410
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3411
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3395
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_arg1":Landroid/media/AudioFormat;
    .end local v2    # "_result":Z
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3396
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3397
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setSpatializerEnabled(Z)V

    .line 3398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3399
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3384
    .end local v0    # "_arg0":Z
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadTrackerAvailableCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackerAvailableCallback;

    move-result-object v0

    .line 3386
    .local v0, "_arg0":Landroid/media/ISpatializerHeadTrackerAvailableCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3387
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3388
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->registerSpatializerHeadTrackerAvailableCallback(Landroid/media/ISpatializerHeadTrackerAvailableCallback;Z)V

    .line 3389
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3390
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3376
    .end local v0    # "_arg0":Landroid/media/ISpatializerHeadTrackerAvailableCallback;
    .end local v1    # "_arg1":Z
    :pswitch_2a
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isHeadTrackerAvailable()Z

    move-result v0

    .line 3377
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3378
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3379
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3367
    .end local v0    # "_result":Z
    :pswitch_2b
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3368
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3369
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    .line 3370
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3371
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3372
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3356
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":Z
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3358
    .local v0, "_arg0":Z
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 3359
    .local v1, "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3360
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V

    .line 3361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3362
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3346
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/media/AudioDeviceAttributes;
    :pswitch_2d
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3347
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3348
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    .line 3349
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3350
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3351
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3336
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":Z
    :pswitch_2e
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3337
    .restart local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3338
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isSpatializerAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    .line 3339
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3340
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3341
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3328
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":Z
    :pswitch_2f
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpatializerAvailable()Z

    move-result v0

    .line 3329
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3330
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3331
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3321
    .end local v0    # "_result":Z
    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpatializerEnabled()Z

    move-result v0

    .line 3322
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3323
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3324
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3314
    .end local v0    # "_result":Z
    :pswitch_31
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSpatializerImmersiveAudioLevel()I

    move-result v0

    .line 3315
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3316
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3317
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3307
    .end local v0    # "_result":I
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioModeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioModeDispatcher;

    move-result-object v0

    .line 3308
    .local v0, "_arg0":Landroid/media/IAudioModeDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3309
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterModeDispatcher(Landroid/media/IAudioModeDispatcher;)V

    .line 3310
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3298
    .end local v0    # "_arg0":Landroid/media/IAudioModeDispatcher;
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioModeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioModeDispatcher;

    move-result-object v0

    .line 3299
    .restart local v0    # "_arg0":Landroid/media/IAudioModeDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3300
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerModeDispatcher(Landroid/media/IAudioModeDispatcher;)V

    .line 3301
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3302
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3288
    .end local v0    # "_arg0":Landroid/media/IAudioModeDispatcher;
    :pswitch_34
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 3289
    .local v0, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3290
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J

    move-result-wide v1

    .line 3291
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3292
    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3293
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3272
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_result":J
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v0

    .line 3274
    .local v0, "_arg0":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3276
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    .line 3278
    .local v2, "_arg2":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3279
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3280
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->abandonAudioFocusForTest(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v4

    .line 3281
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3282
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3283
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3246
    .end local v0    # "_arg0":Landroid/media/IAudioFocusDispatcher;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/media/AudioAttributes;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_36
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/media/AudioAttributes;

    .line 3248
    .local v16, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 3250
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 3252
    .local v18, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v19

    .line 3254
    .local v19, "_arg3":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 3256
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 3258
    .local v21, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 3260
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 3262
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 3263
    .local v24, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3264
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/media/IAudioService$Stub;->requestAudioFocusForTest(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    .line 3265
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3266
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3267
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3236
    .end local v0    # "_result":I
    .end local v16    # "_arg0":Landroid/media/AudioAttributes;
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":Landroid/os/IBinder;
    .end local v19    # "_arg3":Landroid/media/IAudioFocusDispatcher;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Ljava/lang/String;
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":I
    :pswitch_37
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3237
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3238
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getMaxAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v1

    .line 3239
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3240
    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3241
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3226
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":J
    :pswitch_38
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3227
    .restart local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3228
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v1

    .line 3229
    .restart local v1    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3230
    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3231
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3214
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":J
    :pswitch_39
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3216
    .restart local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 3217
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3218
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;J)Z

    move-result v3

    .line 3219
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3220
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3221
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3206
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_arg1":J
    .end local v3    # "_result":Z
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3207
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3208
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setHomeSoundEffectEnabled(Z)V

    .line 3209
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3198
    .end local v0    # "_arg0":Z
    :pswitch_3b
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isHomeSoundEffectEnabled()Z

    move-result v0

    .line 3199
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3200
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3201
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3191
    .end local v0    # "_result":Z
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3192
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3193
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setNavigationRepeatSoundEffectsEnabled(Z)V

    .line 3194
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3183
    .end local v0    # "_arg0":Z
    :pswitch_3d
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->areNavigationRepeatSoundEffectsEnabled()Z

    move-result v0

    .line 3184
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3185
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3186
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3176
    .end local v0    # "_result":Z
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ICommunicationDeviceDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICommunicationDeviceDispatcher;

    move-result-object v0

    .line 3177
    .local v0, "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3178
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V

    .line 3179
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3167
    .end local v0    # "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ICommunicationDeviceDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICommunicationDeviceDispatcher;

    move-result-object v0

    .line 3168
    .restart local v0    # "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3169
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V

    .line 3170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3171
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3159
    .end local v0    # "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    :pswitch_40
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getCommunicationDevice()I

    move-result v0

    .line 3160
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3161
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3162
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3148
    .end local v0    # "_result":I
    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3150
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3151
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3152
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setCommunicationDevice(Landroid/os/IBinder;I)Z

    move-result v2

    .line 3153
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3154
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3155
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3140
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_42
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAvailableCommunicationDeviceIds()[I

    move-result-object v0

    .line 3141
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3142
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3143
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3131
    .end local v0    # "_result":[I
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3132
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3133
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getDeviceMaskForStream(I)I

    move-result v1

    .line 3134
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3135
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3136
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3121
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3122
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3123
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isMusicActive(Z)Z

    move-result v1

    .line 3124
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3125
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3126
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3099
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3101
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 3103
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 3105
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 3107
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 3109
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 3111
    .local v20, "_arg5":I
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/UserHandle;

    .line 3113
    .local v21, "_arg6":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 3114
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3115
    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->setStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    .line 3116
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3077
    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Landroid/os/UserHandle;
    .end local v22    # "_arg7":I
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3079
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 3081
    .restart local v16    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 3083
    .restart local v17    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 3085
    .restart local v18    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 3087
    .restart local v19    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 3089
    .restart local v20    # "_arg5":I
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/UserHandle;

    .line 3091
    .restart local v21    # "_arg6":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 3092
    .restart local v22    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3093
    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    .line 3094
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3055
    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Landroid/os/UserHandle;
    .end local v22    # "_arg7":I
    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3057
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 3059
    .restart local v16    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 3061
    .restart local v17    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 3063
    .restart local v18    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 3065
    .restart local v19    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 3067
    .restart local v20    # "_arg5":I
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/UserHandle;

    .line 3069
    .restart local v21    # "_arg6":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 3070
    .restart local v22    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3071
    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->adjustStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    .line 3072
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3047
    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Landroid/os/UserHandle;
    .end local v22    # "_arg7":I
    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICapturePresetDevicesRoleDispatcher;

    move-result-object v0

    .line 3048
    .local v0, "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3049
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    .line 3050
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3038
    .end local v0    # "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICapturePresetDevicesRoleDispatcher;

    move-result-object v0

    .line 3039
    .restart local v0    # "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3040
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    .line 3041
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3042
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3028
    .end local v0    # "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3029
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3030
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getPreferredDevicesForCapturePreset(I)Ljava/util/List;

    move-result-object v1

    .line 3031
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3032
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3033
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3018
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3019
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3020
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->clearPreferredDevicesForCapturePreset(I)I

    move-result v1

    .line 3021
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3022
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3023
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3006
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3008
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3009
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3010
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setPreferredDevicesForCapturePreset(ILjava/util/List;)I

    move-result v2

    .line 3011
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3012
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3013
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2997
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    .end local v2    # "_result":I
    :pswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2998
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2999
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->cacheParameters(Ljava/lang/String;)V

    .line 3000
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3001
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2989
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2990
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2991
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setMultiAudioFocusEnabled(Z)V

    .line 2992
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2980
    .end local v0    # "_arg0":Z
    :pswitch_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioModeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioModeDispatcher;

    move-result-object v0

    .line 2981
    .local v0, "_arg0":Landroid/media/IAudioModeDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2982
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->oplusRegisterModeDispatcher(Landroid/media/IAudioModeDispatcher;)V

    .line 2983
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2984
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2971
    .end local v0    # "_arg0":Landroid/media/IAudioModeDispatcher;
    :pswitch_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2972
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2973
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->cacheBinauralRecordParameters(Ljava/lang/String;)V

    .line 2974
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2975
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2963
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_51
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->setStreamVolumePermission()Z

    move-result v0

    .line 2964
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2965
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2966
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2954
    .end local v0    # "_result":Z
    :pswitch_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2955
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2956
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2957
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2958
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2959
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2945
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2946
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2947
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setParameters(Ljava/lang/String;)V

    .line 2948
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2949
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2935
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_54
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 2936
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2937
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result v1

    .line 2938
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2939
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2940
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2922
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":I
    :pswitch_55
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 2924
    .restart local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2926
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2927
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2928
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 2929
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2930
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2914
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2915
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2916
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setRttEnabled(Z)V

    .line 2917
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2906
    .end local v0    # "_arg0":Z
    :pswitch_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyPreferredDevicesDispatcher;

    move-result-object v0

    .line 2907
    .local v0, "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2908
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    .line 2909
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2897
    .end local v0    # "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    :pswitch_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyPreferredDevicesDispatcher;

    move-result-object v0

    .line 2898
    .restart local v0    # "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2899
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    .line 2900
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2901
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2889
    .end local v0    # "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    :pswitch_59
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAllowedCapturePolicy()I

    move-result v0

    .line 2890
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2891
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2892
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2880
    .end local v0    # "_result":I
    :pswitch_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2881
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2882
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setAllowedCapturePolicy(I)I

    move-result v1

    .line 2883
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2884
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2885
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2870
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_5b
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 2871
    .local v0, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2872
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getDevicesForAttributesUnprotected(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v1

    .line 2873
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2874
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2875
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2860
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_5c
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 2861
    .restart local v0    # "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2862
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v1

    .line 2863
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2864
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2865
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2850
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2851
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2852
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getPreferredDevicesForStrategy(I)Ljava/util/List;

    move-result-object v1

    .line 2853
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2854
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2855
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2840
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2841
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2842
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->removePreferredDevicesForStrategy(I)I

    move-result v1

    .line 2843
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2844
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2845
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2828
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2830
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2831
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2832
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setPreferredDevicesForStrategy(ILjava/util/List;)I

    move-result v2

    .line 2833
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2834
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2835
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2820
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    .end local v2    # "_result":I
    :pswitch_60
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isCallScreeningModeSupported()Z

    move-result v0

    .line 2821
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2822
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2823
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2811
    .end local v0    # "_result":Z
    :pswitch_61
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2812
    .local v0, "_arg0":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2813
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->hasHapticChannels(Landroid/net/Uri;)Z

    move-result v1

    .line 2814
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2815
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2816
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2799
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_result":Z
    :pswitch_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 2801
    .local v0, "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2802
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2803
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->removeUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v2

    .line 2804
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2805
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2806
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2783
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 2785
    .restart local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2787
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 2789
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 2790
    .local v3, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2791
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result v4

    .line 2792
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2793
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2794
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2771
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[I
    .end local v3    # "_arg3":[Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 2773
    .restart local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2774
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2775
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->removeUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v2

    .line 2776
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2777
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2778
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2755
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 2757
    .restart local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2759
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 2761
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 2762
    .restart local v3    # "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2763
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result v4

    .line 2764
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2765
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2766
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2747
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[I
    .end local v3    # "_arg3":[Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_66
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isAudioServerRunning()Z

    move-result v0

    .line 2748
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2749
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2750
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2740
    .end local v0    # "_result":Z
    :pswitch_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioServerStateDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServerStateDispatcher;

    move-result-object v0

    .line 2741
    .local v0, "_arg0":Landroid/media/IAudioServerStateDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2742
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V

    .line 2743
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2731
    .end local v0    # "_arg0":Landroid/media/IAudioServerStateDispatcher;
    :pswitch_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioServerStateDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServerStateDispatcher;

    move-result-object v0

    .line 2732
    .restart local v0    # "_arg0":Landroid/media/IAudioServerStateDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2733
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V

    .line 2734
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2735
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2719
    .end local v0    # "_arg0":Landroid/media/IAudioServerStateDispatcher;
    :pswitch_69
    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFocusInfo;

    .line 2721
    .local v0, "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2723
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 2724
    .local v2, "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2725
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 2726
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2706
    .end local v0    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_6a
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2708
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 2710
    .local v1, "_arg1":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/media/BluetoothProfileConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/BluetoothProfileConnectionInfo;

    .line 2711
    .local v2, "_arg2":Landroid/media/BluetoothProfileConnectionInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2712
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->handleBluetoothActiveDeviceChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V

    .line 2713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2714
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2696
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg2":Landroid/media/BluetoothProfileConnectionInfo;
    :pswitch_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2698
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2699
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2700
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->playerHasOpPlayAudio(IZ)V

    .line 2701
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2682
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_6c
    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFocusInfo;

    .line 2684
    .local v0, "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2686
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 2687
    .local v2, "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2688
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v3

    .line 2689
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2690
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2691
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2670
    .end local v0    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v3    # "_result":I
    :pswitch_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2672
    .local v0, "_arg0":I
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 2673
    .local v1, "_arg1":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2674
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v2

    .line 2675
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2676
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2677
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2662
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/AudioAttributes;
    .end local v2    # "_result":I
    :pswitch_6e
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v0

    .line 2663
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2664
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2665
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2655
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :pswitch_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v0

    .line 2656
    .local v0, "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2657
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 2658
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2646
    .end local v0    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    :pswitch_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v0

    .line 2647
    .restart local v0    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2648
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 2649
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2650
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2638
    .end local v0    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    :pswitch_71
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v0

    .line 2639
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2640
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2641
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2631
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    :pswitch_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v0

    .line 2632
    .local v0, "_arg0":Landroid/media/IRecordingConfigDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2633
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 2634
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2622
    .end local v0    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    :pswitch_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v0

    .line 2623
    .restart local v0    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2624
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 2625
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2626
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2614
    .end local v0    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    :pswitch_74
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->hasRegisteredDynamicPolicy()Z

    move-result v0

    .line 2615
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2616
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2617
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2606
    .end local v0    # "_result":Z
    :pswitch_75
    sget-object v0, Landroid/media/VolumePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/VolumePolicy;

    .line 2607
    .local v0, "_arg0":Landroid/media/VolumePolicy;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2608
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 2609
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2610
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2594
    .end local v0    # "_arg0":Landroid/media/VolumePolicy;
    :pswitch_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2596
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 2597
    .local v1, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2598
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v2

    .line 2599
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2600
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2601
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2582
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_result":I
    :pswitch_77
    sget-object v0, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 2584
    .local v0, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 2585
    .restart local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2586
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->removeMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v2

    .line 2587
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2588
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2589
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2570
    .end local v0    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_result":I
    :pswitch_78
    sget-object v0, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 2572
    .restart local v0    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 2573
    .restart local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2574
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->addMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v2

    .line 2575
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2576
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2577
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2561
    .end local v0    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_result":I
    :pswitch_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 2562
    .local v0, "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2563
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 2564
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2565
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2553
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 2554
    .restart local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2555
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 2556
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2531
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_7b
    sget-object v0, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 2533
    .local v8, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v9

    .line 2535
    .local v9, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 2537
    .local v16, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 2539
    .local v17, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 2541
    .local v18, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 2543
    .local v19, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v20

    .line 2544
    .local v20, "_arg6":Landroid/media/projection/IMediaProjection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2545
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/media/IAudioService$Stub;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;)Ljava/lang/String;

    move-result-object v0

    .line 2546
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2547
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2548
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2523
    .end local v0    # "_result":Ljava/lang/String;
    .end local v8    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v9    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v16    # "_arg2":Z
    .end local v17    # "_arg3":Z
    .end local v18    # "_arg4":Z
    .end local v19    # "_arg5":Z
    .end local v20    # "_arg6":Landroid/media/projection/IMediaProjection;
    :pswitch_7c
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isHdmiSystemAudioSupported()Z

    move-result v0

    .line 2524
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2525
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2526
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2514
    .end local v0    # "_result":Z
    :pswitch_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2515
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2516
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setHdmiSystemAudioSupported(Z)I

    move-result v1

    .line 2517
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2518
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2519
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2505
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2506
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2507
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->disableSafeMediaVolume(Ljava/lang/String;)V

    .line 2508
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2509
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2495
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2496
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2497
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isStreamAffectedByMute(I)Z

    move-result v1

    .line 2498
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2499
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2500
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2485
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2486
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2487
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isStreamAffectedByRingerMode(I)Z

    move-result v1

    .line 2488
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2489
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2490
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2474
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v0

    .line 2476
    .local v0, "_arg0":Landroid/media/IVolumeController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2477
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2478
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    .line 2479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2480
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2465
    .end local v0    # "_arg0":Landroid/media/IVolumeController;
    .end local v1    # "_arg1":Z
    :pswitch_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v0

    .line 2466
    .restart local v0    # "_arg0":Landroid/media/IVolumeController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2467
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setVolumeController(Landroid/media/IVolumeController;)V

    .line 2468
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2469
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2457
    .end local v0    # "_arg0":Landroid/media/IVolumeController;
    :pswitch_83
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isCameraSoundForced()Z

    move-result v0

    .line 2458
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2459
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2460
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2448
    .end local v0    # "_result":Z
    :pswitch_84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    move-result-object v0

    .line 2449
    .local v0, "_arg0":Landroid/media/IAudioRoutesObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2450
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v1

    .line 2451
    .local v1, "_result":Landroid/media/AudioRoutesInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2452
    invoke-virtual {v14, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2453
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2431
    .end local v0    # "_arg0":Landroid/media/IAudioRoutesObserver;
    .end local v1    # "_result":Landroid/media/AudioRoutesInfo;
    :pswitch_85
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 2433
    .local v6, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2435
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2437
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 2439
    .local v9, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2440
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2441
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->handleBluetoothA2dpActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 2442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2443
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2414
    .end local v6    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Z
    .end local v16    # "_arg4":I
    :pswitch_86
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/media/AudioDeviceAttributes;

    .line 2416
    .local v6, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2418
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2420
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 2422
    .local v9, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 2423
    .local v16, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2424
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setIPDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;Landroid/os/IBinder;Z)V

    .line 2425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2426
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2401
    .end local v6    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Landroid/os/IBinder;
    .end local v16    # "_arg4":Z
    :pswitch_87
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 2403
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2405
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2406
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2407
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 2408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2409
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2393
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_88
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getUiSoundsStreamType()I

    move-result v0

    .line 2394
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2395
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2396
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2386
    .end local v0    # "_result":I
    :pswitch_89
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    .line 2387
    .local v0, "_result":Landroid/media/IRingtonePlayer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2388
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2389
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2378
    .end local v0    # "_result":Landroid/media/IRingtonePlayer;
    :pswitch_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    move-result-object v0

    .line 2379
    .local v0, "_arg0":Landroid/media/IRingtonePlayer;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2380
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    .line 2381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2382
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2367
    .end local v0    # "_arg0":Landroid/media/IRingtonePlayer;
    :pswitch_8b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2369
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2370
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2371
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    .line 2372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2373
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2358
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2359
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2360
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    .line 2361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2362
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2349
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_8d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2350
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2351
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V

    .line 2352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2353
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2338
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_8e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2340
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2341
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2342
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;I)V

    .line 2343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2344
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2330
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_8f
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocus()I

    move-result v0

    .line 2331
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2332
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2333
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2322
    .end local v0    # "_result":I
    :pswitch_90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2323
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2324
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 2325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2326
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2306
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v0

    .line 2308
    .local v0, "_arg0":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2310
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    .line 2312
    .local v2, "_arg2":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2313
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2314
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v4

    .line 2315
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2316
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2317
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2278
    .end local v0    # "_arg0":Landroid/media/IAudioFocusDispatcher;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/media/AudioAttributes;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_92
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/media/AudioAttributes;

    .line 2280
    .local v16, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2282
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 2284
    .local v18, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v19

    .line 2286
    .local v19, "_arg3":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 2288
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 2290
    .local v21, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 2292
    .local v22, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 2294
    .restart local v23    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v24

    .line 2296
    .local v24, "_arg8":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 2297
    .local v25, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2298
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v26, v10

    move/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Landroid/media/IAudioService$Stub;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v0

    .line 2299
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2300
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2301
    goto/16 :goto_0

    .line 2270
    .end local v0    # "_result":I
    .end local v16    # "_arg0":Landroid/media/AudioAttributes;
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":Landroid/os/IBinder;
    .end local v19    # "_arg3":Landroid/media/IAudioFocusDispatcher;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Ljava/lang/String;
    .end local v22    # "_arg6":Ljava/lang/String;
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v25    # "_arg9":I
    :pswitch_93
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothA2dpOn()Z

    move-result v0

    .line 2271
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2272
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2273
    goto/16 :goto_0

    .line 2262
    .end local v0    # "_result":Z
    :pswitch_94
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2263
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2264
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpOn(Z)V

    .line 2265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2266
    goto/16 :goto_0

    .line 2254
    .end local v0    # "_arg0":Z
    :pswitch_95
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v0

    .line 2255
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2256
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2257
    goto/16 :goto_0

    .line 2246
    .end local v0    # "_result":Z
    :pswitch_96
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2247
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2248
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    .line 2249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2250
    goto/16 :goto_0

    .line 2238
    .end local v0    # "_arg0":Z
    :pswitch_97
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v0

    .line 2239
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2240
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2241
    goto/16 :goto_0

    .line 2228
    .end local v0    # "_result":Z
    :pswitch_98
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2230
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2231
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2232
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Landroid/os/IBinder;Z)V

    .line 2233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2234
    goto/16 :goto_0

    .line 2218
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_99
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2219
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2220
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getEncodedSurroundMode(I)I

    move-result v1

    .line 2221
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2222
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2223
    goto/16 :goto_0

    .line 2208
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_9a
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2209
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2210
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setEncodedSurroundMode(I)Z

    move-result v1

    .line 2211
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2212
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2213
    goto/16 :goto_0

    .line 2198
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_9b
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2199
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2200
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isSurroundFormatEnabled(I)Z

    move-result v1

    .line 2201
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2202
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2203
    goto/16 :goto_0

    .line 2186
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_9c
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2188
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2189
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2190
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setSurroundFormatEnabled(IZ)Z

    move-result v2

    .line 2191
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2192
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2193
    goto/16 :goto_0

    .line 2178
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_9d
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getReportedSurroundFormats()Ljava/util/List;

    move-result-object v0

    .line 2179
    .local v0, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2180
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2181
    goto/16 :goto_0

    .line 2171
    .end local v0    # "_result":Ljava/util/List;
    :pswitch_9e
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSurroundFormats()Ljava/util/Map;

    move-result-object v0

    .line 2172
    .local v0, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2173
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 2174
    goto/16 :goto_0

    .line 2166
    .end local v0    # "_result":Ljava/util/Map;
    :pswitch_9f
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    .line 2167
    goto/16 :goto_0

    .line 2161
    :pswitch_a0
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    .line 2162
    goto/16 :goto_0

    .line 2154
    :pswitch_a1
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v0

    .line 2155
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2156
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2157
    goto/16 :goto_0

    .line 2145
    .end local v0    # "_result":Z
    :pswitch_a2
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2147
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 2148
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2149
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    .line 2150
    goto/16 :goto_0

    .line 2135
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":F
    :pswitch_a3
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2137
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2138
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2139
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->playSoundEffect(II)V

    .line 2140
    goto/16 :goto_0

    .line 2127
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_a4
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v0

    .line 2128
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2129
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2130
    goto/16 :goto_0

    .line 2115
    .end local v0    # "_result":I
    :pswitch_a5
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2117
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2119
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2120
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2121
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 2122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2123
    goto/16 :goto_0

    .line 2105
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_a6
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2106
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2107
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v1

    .line 2108
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2109
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2110
    goto/16 :goto_0

    .line 2095
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_a7
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2096
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2097
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v1

    .line 2098
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2099
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2100
    goto/16 :goto_0

    .line 2084
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_a8
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2086
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2087
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2088
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 2089
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2090
    goto/16 :goto_0

    .line 2074
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_a9
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2075
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2076
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isValidRingerMode(I)Z

    move-result v1

    .line 2077
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2078
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2079
    goto/16 :goto_0

    .line 2066
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_aa
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeInternal()I

    move-result v0

    .line 2067
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2068
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2069
    goto/16 :goto_0

    .line 2059
    .end local v0    # "_result":I
    :pswitch_ab
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeExternal()I

    move-result v0

    .line 2060
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2061
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2062
    goto/16 :goto_0

    .line 2049
    .end local v0    # "_result":I
    :pswitch_ac
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2051
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2052
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2053
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setRingerModeInternal(ILjava/lang/String;)V

    .line 2054
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2055
    goto/16 :goto_0

    .line 2038
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_ad
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2040
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2041
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2042
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setRingerModeExternal(ILjava/lang/String;)V

    .line 2043
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2044
    goto/16 :goto_0

    .line 2030
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_ae
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2031
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2032
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setMicrophoneMuteFromSwitch(Z)V

    .line 2033
    goto/16 :goto_0

    .line 2015
    .end local v0    # "_arg0":Z
    :pswitch_af
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2017
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2019
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2021
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2022
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2023
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setMicrophoneMute(ZLjava/lang/String;ILjava/lang/String;)V

    .line 2024
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2025
    goto/16 :goto_0

    .line 2007
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_b0
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isUltrasoundSupported()Z

    move-result v0

    .line 2008
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2009
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2010
    goto/16 :goto_0

    .line 2000
    .end local v0    # "_result":Z
    :pswitch_b1
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMicrophoneMuted()Z

    move-result v0

    .line 2001
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2002
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2003
    goto/16 :goto_0

    .line 1993
    .end local v0    # "_result":Z
    :pswitch_b2
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    .line 1994
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioProductStrategy;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1995
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1996
    goto/16 :goto_0

    .line 1986
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioProductStrategy;>;"
    :pswitch_b3
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSupportedSystemUsages()[I

    move-result-object v0

    .line 1987
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1988
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1989
    goto/16 :goto_0

    .line 1978
    .end local v0    # "_result":[I
    :pswitch_b4
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1979
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1980
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setSupportedSystemUsages([I)V

    .line 1981
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1982
    goto/16 :goto_0

    .line 1968
    .end local v0    # "_arg0":[I
    :pswitch_b5
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1969
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1970
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v1

    .line 1971
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1972
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1973
    goto/16 :goto_0

    .line 1958
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_b6
    move/from16 v26, v10

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 1959
    .local v0, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1960
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v1

    .line 1961
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1962
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1963
    goto/16 :goto_0

    .line 1948
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_result":I
    :pswitch_b7
    move/from16 v26, v10

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 1949
    .restart local v0    # "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1950
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v1

    .line 1951
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1952
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1953
    goto/16 :goto_0

    .line 1938
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_result":I
    :pswitch_b8
    move/from16 v26, v10

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 1939
    .restart local v0    # "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1940
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v1

    .line 1941
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1942
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1943
    goto/16 :goto_0

    .line 1921
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_result":I
    :pswitch_b9
    move/from16 v26, v10

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/media/AudioAttributes;

    .line 1923
    .local v6, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1925
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1927
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1929
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1930
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1931
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setVolumeIndexForAttributes(Landroid/media/AudioAttributes;IILjava/lang/String;Ljava/lang/String;)V

    .line 1932
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1933
    goto/16 :goto_0

    .line 1913
    .end local v6    # "_arg0":Landroid/media/AudioAttributes;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":Ljava/lang/String;
    :pswitch_ba
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v0

    .line 1914
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioVolumeGroup;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1915
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1916
    goto/16 :goto_0

    .line 1904
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioVolumeGroup;>;"
    :pswitch_bb
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1905
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1906
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v1

    .line 1907
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1908
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1909
    goto/16 :goto_0

    .line 1894
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_bc
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1895
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1896
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getStreamMinVolume(I)I

    move-result v1

    .line 1897
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1898
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1899
    goto/16 :goto_0

    .line 1886
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_bd
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getLastHfpScoVolume()I

    move-result v0

    .line 1887
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1888
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1889
    goto/16 :goto_0

    .line 1879
    .end local v0    # "_result":I
    :pswitch_be
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getBleCgVolume()I

    move-result v0

    .line 1880
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1881
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1882
    goto/16 :goto_0

    .line 1870
    .end local v0    # "_result":I
    :pswitch_bf
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1871
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1872
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v1

    .line 1873
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1874
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1875
    goto/16 :goto_0

    .line 1853
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_c0
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1855
    .local v6, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1857
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1859
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1861
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1862
    .restart local v10    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1863
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setMasterMute(ZILjava/lang/String;ILjava/lang/String;)V

    .line 1864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1865
    goto/16 :goto_0

    .line 1845
    .end local v6    # "_arg0":Z
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":Ljava/lang/String;
    :pswitch_c1
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMasterMute()Z

    move-result v0

    .line 1846
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1847
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1848
    goto/16 :goto_0

    .line 1835
    .end local v0    # "_result":Z
    :pswitch_c2
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1837
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1838
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1839
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V

    .line 1840
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1841
    goto/16 :goto_0

    .line 1825
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_c3
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1826
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1827
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v1

    .line 1828
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1829
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1830
    goto/16 :goto_0

    .line 1811
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_c4
    move/from16 v26, v10

    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 1813
    .local v0, "_arg0":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1815
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1817
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1818
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1819
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->handleVolumeKey(Landroid/view/KeyEvent;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1820
    goto/16 :goto_0

    .line 1794
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_c5
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1796
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1798
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1800
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1802
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1803
    .restart local v10    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1804
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V

    .line 1805
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1806
    goto/16 :goto_0

    .line 1779
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":Ljava/lang/String;
    :pswitch_c6
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1781
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1783
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1785
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1786
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1787
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamVolume(IIILjava/lang/String;)V

    .line 1788
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1789
    goto/16 :goto_0

    .line 1762
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_c7
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1764
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1766
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1768
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1770
    .restart local v9    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1771
    .restart local v10    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1772
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->adjustStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V

    .line 1773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1774
    goto/16 :goto_0

    .line 1747
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":Ljava/lang/String;
    :pswitch_c8
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1749
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1751
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1753
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1754
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1755
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 1756
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1757
    goto/16 :goto_0

    .line 1737
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_c9
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1739
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1740
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1741
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->playerSessionId(II)V

    .line 1742
    goto/16 :goto_0

    .line 1729
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_ca
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1730
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1731
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->releaseRecorder(I)V

    .line 1732
    goto/16 :goto_0

    .line 1719
    .end local v0    # "_arg0":I
    :pswitch_cb
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1721
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1722
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1723
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->recorderEvent(II)V

    .line 1724
    goto :goto_0

    .line 1709
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_cc
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1710
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1711
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->trackRecorder(Landroid/os/IBinder;)I

    move-result v1

    .line 1712
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1713
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1714
    goto :goto_0

    .line 1701
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_cd
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1702
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1703
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->releasePlayer(I)V

    .line 1704
    goto :goto_0

    .line 1689
    .end local v0    # "_arg0":I
    :pswitch_ce
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1691
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1693
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1694
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1695
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->playerEvent(III)V

    .line 1696
    goto :goto_0

    .line 1679
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_cf
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1681
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 1682
    .local v1, "_arg1":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1683
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->playerAttributes(ILandroid/media/AudioAttributes;)V

    .line 1684
    goto :goto_0

    .line 1669
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/AudioAttributes;
    :pswitch_d0
    move/from16 v26, v10

    sget-object v0, Landroid/media/PlayerBase$PlayerIdCard;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase$PlayerIdCard;

    .line 1670
    .local v0, "_arg0":Landroid/media/PlayerBase$PlayerIdCard;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1671
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v1

    .line 1672
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1673
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1674
    nop

    .line 3755
    .end local v0    # "_arg0":Landroid/media/PlayerBase$PlayerIdCard;
    .end local v1    # "_result":I
    :goto_0
    return v26

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
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
