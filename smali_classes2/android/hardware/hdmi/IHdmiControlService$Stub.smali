.class public abstract Landroid/hardware/hdmi/IHdmiControlService$Stub;
.super Landroid/os/Binder;
.source "IHdmiControlService.java"

# interfaces
.implements Landroid/hardware/hdmi/IHdmiControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/IHdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiControlService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.hdmi.IHdmiControlService"

.field static final blacklist TRANSACTION_addCecSettingChangeListener:I = 0x32

.field static final greylist-max-o TRANSACTION_addDeviceEventListener:I = 0xd

.field static final blacklist TRANSACTION_addHdmiCecVolumeControlFeatureListener:I = 0x9

.field static final blacklist TRANSACTION_addHdmiControlStatusChangeListener:I = 0x7

.field static final greylist-max-o TRANSACTION_addHdmiMhlVendorCommandListener:I = 0x2c

.field static final greylist-max-o TRANSACTION_addHotplugEventListener:I = 0xb

.field static final greylist-max-o TRANSACTION_addSystemAudioModeChangeListener:I = 0x17

.field static final greylist-max-o TRANSACTION_addVendorCommandListener:I = 0x24

.field static final blacklist TRANSACTION_askRemoteDeviceToBecomeActiveSource:I = 0x22

.field static final greylist-max-o TRANSACTION_canChangeSystemAudioMode:I = 0x13

.field static final greylist-max-o TRANSACTION_clearTimerRecording:I = 0x2a

.field static final greylist-max-o TRANSACTION_deviceSelect:I = 0xe

.field static final greylist-max-o TRANSACTION_getActiveSource:I = 0x2

.field static final blacklist TRANSACTION_getAllowedCecSettingIntValues:I = 0x36

.field static final blacklist TRANSACTION_getAllowedCecSettingStringValues:I = 0x35

.field static final blacklist TRANSACTION_getCecSettingIntValue:I = 0x39

.field static final blacklist TRANSACTION_getCecSettingStringValue:I = 0x37

.field static final greylist-max-o TRANSACTION_getDeviceList:I = 0x1f

.field static final greylist-max-o TRANSACTION_getInputDevices:I = 0x1e

.field static final blacklist TRANSACTION_getMessageHistorySize:I = 0x31

.field static final blacklist TRANSACTION_getPhysicalAddress:I = 0x15

.field static final greylist-max-o TRANSACTION_getPortInfo:I = 0x12

.field static final greylist-max-o TRANSACTION_getSupportedTypes:I = 0x1

.field static final greylist-max-o TRANSACTION_getSystemAudioMode:I = 0x14

.field static final blacklist TRANSACTION_getUserCecSettings:I = 0x34

.field static final greylist-max-o TRANSACTION_oneTouchPlay:I = 0x3

.field static final greylist-max-o TRANSACTION_portSelect:I = 0xf

.field static final blacklist TRANSACTION_powerOffRemoteDevice:I = 0x20

.field static final blacklist TRANSACTION_powerOnRemoteDevice:I = 0x21

.field static final greylist-max-o TRANSACTION_queryDisplayStatus:I = 0x6

.field static final blacklist TRANSACTION_removeCecSettingChangeListener:I = 0x33

.field static final blacklist TRANSACTION_removeHdmiCecVolumeControlFeatureListener:I = 0xa

.field static final blacklist TRANSACTION_removeHdmiControlStatusChangeListener:I = 0x8

.field static final greylist-max-o TRANSACTION_removeHotplugEventListener:I = 0xc

.field static final greylist-max-o TRANSACTION_removeSystemAudioModeChangeListener:I = 0x18

.field static final blacklist TRANSACTION_reportAudioStatus:I = 0x2e

.field static final greylist-max-o TRANSACTION_sendKeyEvent:I = 0x10

.field static final greylist-max-o TRANSACTION_sendMhlVendorCommand:I = 0x2b

.field static final greylist-max-o TRANSACTION_sendStandby:I = 0x25

.field static final greylist-max-o TRANSACTION_sendVendorCommand:I = 0x23

.field static final blacklist TRANSACTION_sendVolumeKeyEvent:I = 0x11

.field static final greylist-max-o TRANSACTION_setArcMode:I = 0x19

.field static final blacklist TRANSACTION_setCecSettingIntValue:I = 0x3a

.field static final blacklist TRANSACTION_setCecSettingStringValue:I = 0x38

.field static final greylist-max-o TRANSACTION_setHdmiRecordListener:I = 0x26

.field static final greylist-max-o TRANSACTION_setInputChangeListener:I = 0x1d

.field static final blacklist TRANSACTION_setMessageHistorySize:I = 0x30

.field static final greylist-max-o TRANSACTION_setProhibitMode:I = 0x1a

.field static final greylist-max-o TRANSACTION_setStandbyMode:I = 0x2d

.field static final greylist-max-o TRANSACTION_setSystemAudioMode:I = 0x16

.field static final blacklist TRANSACTION_setSystemAudioModeOnForAudioOnlySource:I = 0x2f

.field static final greylist-max-o TRANSACTION_setSystemAudioMute:I = 0x1c

.field static final greylist-max-o TRANSACTION_setSystemAudioVolume:I = 0x1b

.field static final blacklist TRANSACTION_shouldHandleTvPowerKey:I = 0x5

.field static final greylist-max-o TRANSACTION_startOneTouchRecord:I = 0x27

.field static final greylist-max-o TRANSACTION_startTimerRecording:I = 0x29

.field static final greylist-max-o TRANSACTION_stopOneTouchRecord:I = 0x28

.field static final blacklist TRANSACTION_toggleAndFollowTvPower:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 217
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 218
    const-string v0, "android.hardware.hdmi.IHdmiControlService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 226
    if-nez p0, :cond_0

    .line 227
    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_0
    const-string v0, "android.hardware.hdmi.IHdmiControlService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 230
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v1, :cond_1

    .line 231
    move-object v1, v0

    check-cast v1, Landroid/hardware/hdmi/IHdmiControlService;

    return-object v1

    .line 233
    :cond_1
    new-instance v1, Landroid/hardware/hdmi/IHdmiControlService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 242
    packed-switch p0, :pswitch_data_0

    .line 478
    const/4 v0, 0x0

    return-object v0

    .line 474
    :pswitch_0
    const-string v0, "setCecSettingIntValue"

    return-object v0

    .line 470
    :pswitch_1
    const-string v0, "getCecSettingIntValue"

    return-object v0

    .line 466
    :pswitch_2
    const-string v0, "setCecSettingStringValue"

    return-object v0

    .line 462
    :pswitch_3
    const-string v0, "getCecSettingStringValue"

    return-object v0

    .line 458
    :pswitch_4
    const-string v0, "getAllowedCecSettingIntValues"

    return-object v0

    .line 454
    :pswitch_5
    const-string v0, "getAllowedCecSettingStringValues"

    return-object v0

    .line 450
    :pswitch_6
    const-string v0, "getUserCecSettings"

    return-object v0

    .line 446
    :pswitch_7
    const-string v0, "removeCecSettingChangeListener"

    return-object v0

    .line 442
    :pswitch_8
    const-string v0, "addCecSettingChangeListener"

    return-object v0

    .line 438
    :pswitch_9
    const-string v0, "getMessageHistorySize"

    return-object v0

    .line 434
    :pswitch_a
    const-string v0, "setMessageHistorySize"

    return-object v0

    .line 430
    :pswitch_b
    const-string v0, "setSystemAudioModeOnForAudioOnlySource"

    return-object v0

    .line 426
    :pswitch_c
    const-string v0, "reportAudioStatus"

    return-object v0

    .line 422
    :pswitch_d
    const-string v0, "setStandbyMode"

    return-object v0

    .line 418
    :pswitch_e
    const-string v0, "addHdmiMhlVendorCommandListener"

    return-object v0

    .line 414
    :pswitch_f
    const-string v0, "sendMhlVendorCommand"

    return-object v0

    .line 410
    :pswitch_10
    const-string v0, "clearTimerRecording"

    return-object v0

    .line 406
    :pswitch_11
    const-string v0, "startTimerRecording"

    return-object v0

    .line 402
    :pswitch_12
    const-string v0, "stopOneTouchRecord"

    return-object v0

    .line 398
    :pswitch_13
    const-string v0, "startOneTouchRecord"

    return-object v0

    .line 394
    :pswitch_14
    const-string v0, "setHdmiRecordListener"

    return-object v0

    .line 390
    :pswitch_15
    const-string v0, "sendStandby"

    return-object v0

    .line 386
    :pswitch_16
    const-string v0, "addVendorCommandListener"

    return-object v0

    .line 382
    :pswitch_17
    const-string v0, "sendVendorCommand"

    return-object v0

    .line 378
    :pswitch_18
    const-string v0, "askRemoteDeviceToBecomeActiveSource"

    return-object v0

    .line 374
    :pswitch_19
    const-string v0, "powerOnRemoteDevice"

    return-object v0

    .line 370
    :pswitch_1a
    const-string v0, "powerOffRemoteDevice"

    return-object v0

    .line 366
    :pswitch_1b
    const-string v0, "getDeviceList"

    return-object v0

    .line 362
    :pswitch_1c
    const-string v0, "getInputDevices"

    return-object v0

    .line 358
    :pswitch_1d
    const-string v0, "setInputChangeListener"

    return-object v0

    .line 354
    :pswitch_1e
    const-string v0, "setSystemAudioMute"

    return-object v0

    .line 350
    :pswitch_1f
    const-string v0, "setSystemAudioVolume"

    return-object v0

    .line 346
    :pswitch_20
    const-string v0, "setProhibitMode"

    return-object v0

    .line 342
    :pswitch_21
    const-string v0, "setArcMode"

    return-object v0

    .line 338
    :pswitch_22
    const-string v0, "removeSystemAudioModeChangeListener"

    return-object v0

    .line 334
    :pswitch_23
    const-string v0, "addSystemAudioModeChangeListener"

    return-object v0

    .line 330
    :pswitch_24
    const-string v0, "setSystemAudioMode"

    return-object v0

    .line 326
    :pswitch_25
    const-string v0, "getPhysicalAddress"

    return-object v0

    .line 322
    :pswitch_26
    const-string v0, "getSystemAudioMode"

    return-object v0

    .line 318
    :pswitch_27
    const-string v0, "canChangeSystemAudioMode"

    return-object v0

    .line 314
    :pswitch_28
    const-string v0, "getPortInfo"

    return-object v0

    .line 310
    :pswitch_29
    const-string v0, "sendVolumeKeyEvent"

    return-object v0

    .line 306
    :pswitch_2a
    const-string v0, "sendKeyEvent"

    return-object v0

    .line 302
    :pswitch_2b
    const-string v0, "portSelect"

    return-object v0

    .line 298
    :pswitch_2c
    const-string v0, "deviceSelect"

    return-object v0

    .line 294
    :pswitch_2d
    const-string v0, "addDeviceEventListener"

    return-object v0

    .line 290
    :pswitch_2e
    const-string v0, "removeHotplugEventListener"

    return-object v0

    .line 286
    :pswitch_2f
    const-string v0, "addHotplugEventListener"

    return-object v0

    .line 282
    :pswitch_30
    const-string v0, "removeHdmiCecVolumeControlFeatureListener"

    return-object v0

    .line 278
    :pswitch_31
    const-string v0, "addHdmiCecVolumeControlFeatureListener"

    return-object v0

    .line 274
    :pswitch_32
    const-string v0, "removeHdmiControlStatusChangeListener"

    return-object v0

    .line 270
    :pswitch_33
    const-string v0, "addHdmiControlStatusChangeListener"

    return-object v0

    .line 266
    :pswitch_34
    const-string v0, "queryDisplayStatus"

    return-object v0

    .line 262
    :pswitch_35
    const-string v0, "shouldHandleTvPowerKey"

    return-object v0

    .line 258
    :pswitch_36
    const-string/jumbo v0, "toggleAndFollowTvPower"

    return-object v0

    .line 254
    :pswitch_37
    const-string v0, "oneTouchPlay"

    return-object v0

    .line 250
    :pswitch_38
    const-string v0, "getActiveSource"

    return-object v0

    .line 246
    :pswitch_39
    const-string v0, "getSupportedTypes"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 237
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2085
    const/16 v0, 0x39

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 485
    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    const-string v0, "android.hardware.hdmi.IHdmiControlService"

    .line 490
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 491
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 501
    packed-switch p1, :pswitch_data_1

    .line 1066
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 497
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 498
    return v1

    .line 1056
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1058
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1059
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1060
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setCecSettingIntValue(Ljava/lang/String;I)V

    .line 1061
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    goto/16 :goto_0

    .line 1046
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1047
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1048
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v3

    .line 1049
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1051
    goto/16 :goto_0

    .line 1035
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1037
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1038
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1039
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    goto/16 :goto_0

    .line 1025
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1026
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1027
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1028
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1030
    goto/16 :goto_0

    .line 1015
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1016
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1017
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getAllowedCecSettingIntValues(Ljava/lang/String;)[I

    move-result-object v3

    .line 1018
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1020
    goto/16 :goto_0

    .line 1005
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1006
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1007
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getAllowedCecSettingStringValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1008
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1010
    goto/16 :goto_0

    .line 997
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getUserCecSettings()Ljava/util/List;

    move-result-object v2

    .line 998
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1000
    goto/16 :goto_0

    .line 987
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 989
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/hdmi/IHdmiCecSettingChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;

    move-result-object v3

    .line 990
    .local v3, "_arg1":Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 991
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    .line 992
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    goto/16 :goto_0

    .line 976
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 978
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/hdmi/IHdmiCecSettingChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;

    move-result-object v3

    .line 979
    .restart local v3    # "_arg1":Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 980
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    .line 981
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    goto/16 :goto_0

    .line 968
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getMessageHistorySize()I

    move-result v2

    .line 969
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 971
    goto/16 :goto_0

    .line 959
    .end local v2    # "_result":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 960
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 961
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setMessageHistorySize(I)Z

    move-result v3

    .line 962
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 964
    goto/16 :goto_0

    .line 952
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioModeOnForAudioOnlySource()V

    .line 953
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    goto/16 :goto_0

    .line 938
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 940
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 942
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 944
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 945
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 946
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->reportAudioStatus(IIIZ)V

    .line 947
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    goto/16 :goto_0

    .line 929
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 930
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 931
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setStandbyMode(Z)V

    .line 932
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    goto/16 :goto_0

    .line 920
    .end local v2    # "_arg0":Z
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    move-result-object v2

    .line 921
    .local v2, "_arg0":Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    .line 923
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    goto/16 :goto_0

    .line 905
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 907
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 909
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 911
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 912
    .local v5, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 913
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendMhlVendorCommand(III[B)V

    .line 914
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    goto/16 :goto_0

    .line 892
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":[B
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 894
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 896
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 897
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 898
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->clearTimerRecording(II[B)V

    .line 899
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    goto/16 :goto_0

    .line 879
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 881
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 883
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 884
    .restart local v4    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 885
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->startTimerRecording(II[B)V

    .line 886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    goto/16 :goto_0

    .line 870
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 871
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 872
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->stopOneTouchRecord(I)V

    .line 873
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    goto/16 :goto_0

    .line 859
    .end local v2    # "_arg0":I
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 861
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 862
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 863
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->startOneTouchRecord(I[B)V

    .line 864
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    goto/16 :goto_0

    .line 850
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v2

    .line 851
    .local v2, "_arg0":Landroid/hardware/hdmi/IHdmiRecordListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V

    .line 853
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    goto/16 :goto_0

    .line 839
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiRecordListener;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 841
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 842
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 843
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendStandby(II)V

    .line 844
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    goto/16 :goto_0

    .line 828
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v2

    .line 830
    .local v2, "_arg0":Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 831
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    .line 833
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    goto/16 :goto_0

    .line 813
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .end local v3    # "_arg1":I
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 815
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 817
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 819
    .restart local v4    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 820
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 821
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendVendorCommand(II[BZ)V

    .line 822
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    goto/16 :goto_0

    .line 804
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":Z
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 805
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 806
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->askRemoteDeviceToBecomeActiveSource(I)V

    .line 807
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    goto/16 :goto_0

    .line 793
    .end local v2    # "_arg0":I
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 795
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 796
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 797
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->powerOnRemoteDevice(II)V

    .line 798
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    goto/16 :goto_0

    .line 782
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 784
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 785
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->powerOffRemoteDevice(II)V

    .line 787
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    goto/16 :goto_0

    .line 774
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1c
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getDeviceList()Ljava/util/List;

    move-result-object v2

    .line 775
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 777
    goto/16 :goto_0

    .line 767
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :pswitch_1d
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getInputDevices()Ljava/util/List;

    move-result-object v2

    .line 768
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 770
    goto/16 :goto_0

    .line 759
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiInputChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiInputChangeListener;

    move-result-object v2

    .line 760
    .local v2, "_arg0":Landroid/hardware/hdmi/IHdmiInputChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 761
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    .line 762
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    goto/16 :goto_0

    .line 750
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiInputChangeListener;
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 751
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 752
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioMute(Z)V

    .line 753
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    goto/16 :goto_0

    .line 737
    .end local v2    # "_arg0":Z
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 739
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 741
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 742
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 743
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioVolume(III)V

    .line 744
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    goto/16 :goto_0

    .line 728
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 729
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setProhibitMode(Z)V

    .line 731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    goto/16 :goto_0

    .line 719
    .end local v2    # "_arg0":Z
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 720
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 721
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setArcMode(Z)V

    .line 722
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    goto/16 :goto_0

    .line 710
    .end local v2    # "_arg0":Z
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object v2

    .line 711
    .local v2, "_arg0":Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 712
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 713
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    goto/16 :goto_0

    .line 701
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object v2

    .line 702
    .restart local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 703
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 704
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    goto/16 :goto_0

    .line 690
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 692
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v3

    .line 693
    .local v3, "_arg1":Landroid/hardware/hdmi/IHdmiControlCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 694
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 695
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    goto/16 :goto_0

    .line 682
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/hardware/hdmi/IHdmiControlCallback;
    :pswitch_26
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getPhysicalAddress()I

    move-result v2

    .line 683
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    goto/16 :goto_0

    .line 675
    .end local v2    # "_result":I
    :pswitch_27
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getSystemAudioMode()Z

    move-result v2

    .line 676
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 678
    goto/16 :goto_0

    .line 668
    .end local v2    # "_result":Z
    :pswitch_28
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->canChangeSystemAudioMode()Z

    move-result v2

    .line 669
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 671
    goto/16 :goto_0

    .line 661
    .end local v2    # "_result":Z
    :pswitch_29
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getPortInfo()Ljava/util/List;

    move-result-object v2

    .line 662
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 664
    goto/16 :goto_0

    .line 649
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 651
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 653
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 654
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 655
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendVolumeKeyEvent(IIZ)V

    .line 656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    goto/16 :goto_0

    .line 636
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 638
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 640
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 641
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendKeyEvent(IIZ)V

    .line 643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    goto/16 :goto_0

    .line 625
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 627
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v3

    .line 628
    .local v3, "_arg1":Landroid/hardware/hdmi/IHdmiControlCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 630
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    goto/16 :goto_0

    .line 614
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/hdmi/IHdmiControlCallback;
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 616
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v3

    .line 617
    .restart local v3    # "_arg1":Landroid/hardware/hdmi/IHdmiControlCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    goto/16 :goto_0

    .line 605
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/hdmi/IHdmiControlCallback;
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiDeviceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    move-result-object v2

    .line 606
    .local v2, "_arg0":Landroid/hardware/hdmi/IHdmiDeviceEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 607
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    .line 608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    goto/16 :goto_0

    .line 596
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiDeviceEventListener;
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v2

    .line 597
    .local v2, "_arg0":Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    goto/16 :goto_0

    .line 587
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v2

    .line 588
    .restart local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    goto/16 :goto_0

    .line 578
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    move-result-object v2

    .line 579
    .local v2, "_arg0":Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    .line 581
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    goto/16 :goto_0

    .line 569
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    move-result-object v2

    .line 570
    .restart local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 571
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    .line 572
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    goto/16 :goto_0

    .line 560
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    move-result-object v2

    .line 561
    .local v2, "_arg0":Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    goto :goto_0

    .line 551
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    move-result-object v2

    .line 552
    .restart local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    .line 554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    goto :goto_0

    .line 542
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v2

    .line 543
    .local v2, "_arg0":Landroid/hardware/hdmi/IHdmiControlCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 545
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    goto :goto_0

    .line 534
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiControlCallback;
    :pswitch_36
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->shouldHandleTvPowerKey()Z

    move-result v2

    .line 535
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 537
    goto :goto_0

    .line 528
    .end local v2    # "_result":Z
    :pswitch_37
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->toggleAndFollowTvPower()V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    goto :goto_0

    .line 520
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v2

    .line 521
    .local v2, "_arg0":Landroid/hardware/hdmi/IHdmiControlCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    goto :goto_0

    .line 512
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiControlCallback;
    :pswitch_39
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    .line 513
    .local v2, "_result":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 515
    goto :goto_0

    .line 505
    .end local v2    # "_result":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_3a
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getSupportedTypes()[I

    move-result-object v2

    .line 506
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 508
    nop

    .line 1069
    .end local v2    # "_result":[I
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
