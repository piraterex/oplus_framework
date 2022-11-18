.class public abstract Landroid/hardware/display/IDisplayManager$Stub;
.super Landroid/os/Binder;
.source "IDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/IDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.display.IDisplayManager"

.field static final blacklist TRANSACTION_areUserDisabledHdrTypesAllowed:I = 0x11

.field static final greylist-max-o TRANSACTION_connectWifiDisplay:I = 0x8

.field static final greylist-max-o TRANSACTION_createVirtualDisplay:I = 0x14

.field static final greylist-max-o TRANSACTION_disconnectWifiDisplay:I = 0x9

.field static final greylist-max-o TRANSACTION_forgetWifiDisplay:I = 0xb

.field static final greylist-max-o TRANSACTION_getAmbientBrightnessStats:I = 0x1b

.field static final blacklist TRANSACTION_getBrightness:I = 0x24

.field static final blacklist TRANSACTION_getBrightnessConfigurationForDisplay:I = 0x1e

.field static final greylist-max-o TRANSACTION_getBrightnessConfigurationForUser:I = 0x1f

.field static final greylist-max-o TRANSACTION_getBrightnessEvents:I = 0x1a

.field static final blacklist TRANSACTION_getBrightnessInfo:I = 0x27

.field static final greylist-max-o TRANSACTION_getDefaultBrightnessConfiguration:I = 0x20

.field static final blacklist TRANSACTION_getDisplayDecorationSupport:I = 0x31

.field static final greylist-max-o TRANSACTION_getDisplayIds:I = 0x2

.field static final greylist-max-o TRANSACTION_getDisplayInfo:I = 0x1

.field static final greylist-max-o TRANSACTION_getMinimumBrightnessCurve:I = 0x26

.field static final blacklist TRANSACTION_getPreferredWideGamutColorSpaceId:I = 0x28

.field static final blacklist TRANSACTION_getRefreshRateSwitchingType:I = 0x2f

.field static final greylist-max-o TRANSACTION_getStableDisplaySize:I = 0x19

.field static final blacklist TRANSACTION_getSystemPreferredDisplayMode:I = 0x2b

.field static final blacklist TRANSACTION_getUserDisabledHdrTypes:I = 0x12

.field static final blacklist TRANSACTION_getUserPreferredDisplayMode:I = 0x2a

.field static final greylist-max-o TRANSACTION_getWifiDisplayStatus:I = 0xe

.field static final blacklist TRANSACTION_isMinimalPostProcessingRequested:I = 0x21

.field static final blacklist TRANSACTION_isUidPresentOnDisplay:I = 0x3

.field static final greylist-max-o TRANSACTION_pauseWifiDisplay:I = 0xc

.field static final greylist-max-o TRANSACTION_registerCallback:I = 0x4

.field static final blacklist TRANSACTION_registerCallbackWithEventMask:I = 0x5

.field static final greylist-max-o TRANSACTION_releaseVirtualDisplay:I = 0x17

.field static final greylist-max-o TRANSACTION_renameWifiDisplay:I = 0xa

.field static final greylist-max-o TRANSACTION_requestColorMode:I = 0x13

.field static final greylist-max-o TRANSACTION_resizeVirtualDisplay:I = 0x15

.field static final greylist-max-o TRANSACTION_resumeWifiDisplay:I = 0xd

.field static final blacklist TRANSACTION_setAreUserDisabledHdrTypesAllowed:I = 0x10

.field static final blacklist TRANSACTION_setBrightness:I = 0x23

.field static final blacklist TRANSACTION_setBrightnessConfigurationForDisplay:I = 0x1d

.field static final greylist-max-o TRANSACTION_setBrightnessConfigurationForUser:I = 0x1c

.field static final blacklist TRANSACTION_setRefreshRateSwitchingType:I = 0x2e

.field static final blacklist TRANSACTION_setShouldAlwaysRespectAppRequestedMode:I = 0x2c

.field static final blacklist TRANSACTION_setSpecBrightness:I = 0x30

.field static final greylist-max-o TRANSACTION_setTemporaryAutoBrightnessAdjustment:I = 0x25

.field static final greylist-max-o TRANSACTION_setTemporaryBrightness:I = 0x22

.field static final blacklist TRANSACTION_setUserDisabledHdrTypes:I = 0xf

.field static final blacklist TRANSACTION_setUserPreferredDisplayMode:I = 0x29

.field static final blacklist TRANSACTION_setVirtualDisplayState:I = 0x18

.field static final greylist-max-o TRANSACTION_setVirtualDisplaySurface:I = 0x16

.field static final blacklist TRANSACTION_shouldAlwaysRespectAppRequestedMode:I = 0x2d

.field static final greylist-max-o TRANSACTION_startWifiDisplayScan:I = 0x6

.field static final greylist-max-o TRANSACTION_stopWifiDisplayScan:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 248
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 249
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IDisplayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 257
    if-nez p0, :cond_0

    .line 258
    const/4 v0, 0x0

    return-object v0

    .line 260
    :cond_0
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 261
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/display/IDisplayManager;

    if-eqz v1, :cond_1

    .line 262
    move-object v1, v0

    check-cast v1, Landroid/hardware/display/IDisplayManager;

    return-object v1

    .line 264
    :cond_1
    new-instance v1, Landroid/hardware/display/IDisplayManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/display/IDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 273
    packed-switch p0, :pswitch_data_0

    .line 473
    const/4 v0, 0x0

    return-object v0

    .line 469
    :pswitch_0
    const-string v0, "getDisplayDecorationSupport"

    return-object v0

    .line 465
    :pswitch_1
    const-string/jumbo v0, "setSpecBrightness"

    return-object v0

    .line 461
    :pswitch_2
    const-string v0, "getRefreshRateSwitchingType"

    return-object v0

    .line 457
    :pswitch_3
    const-string/jumbo v0, "setRefreshRateSwitchingType"

    return-object v0

    .line 453
    :pswitch_4
    const-string/jumbo v0, "shouldAlwaysRespectAppRequestedMode"

    return-object v0

    .line 449
    :pswitch_5
    const-string/jumbo v0, "setShouldAlwaysRespectAppRequestedMode"

    return-object v0

    .line 445
    :pswitch_6
    const-string v0, "getSystemPreferredDisplayMode"

    return-object v0

    .line 441
    :pswitch_7
    const-string v0, "getUserPreferredDisplayMode"

    return-object v0

    .line 437
    :pswitch_8
    const-string/jumbo v0, "setUserPreferredDisplayMode"

    return-object v0

    .line 433
    :pswitch_9
    const-string v0, "getPreferredWideGamutColorSpaceId"

    return-object v0

    .line 429
    :pswitch_a
    const-string v0, "getBrightnessInfo"

    return-object v0

    .line 425
    :pswitch_b
    const-string v0, "getMinimumBrightnessCurve"

    return-object v0

    .line 421
    :pswitch_c
    const-string/jumbo v0, "setTemporaryAutoBrightnessAdjustment"

    return-object v0

    .line 417
    :pswitch_d
    const-string v0, "getBrightness"

    return-object v0

    .line 413
    :pswitch_e
    const-string/jumbo v0, "setBrightness"

    return-object v0

    .line 409
    :pswitch_f
    const-string/jumbo v0, "setTemporaryBrightness"

    return-object v0

    .line 405
    :pswitch_10
    const-string v0, "isMinimalPostProcessingRequested"

    return-object v0

    .line 401
    :pswitch_11
    const-string v0, "getDefaultBrightnessConfiguration"

    return-object v0

    .line 397
    :pswitch_12
    const-string v0, "getBrightnessConfigurationForUser"

    return-object v0

    .line 393
    :pswitch_13
    const-string v0, "getBrightnessConfigurationForDisplay"

    return-object v0

    .line 389
    :pswitch_14
    const-string/jumbo v0, "setBrightnessConfigurationForDisplay"

    return-object v0

    .line 385
    :pswitch_15
    const-string/jumbo v0, "setBrightnessConfigurationForUser"

    return-object v0

    .line 381
    :pswitch_16
    const-string v0, "getAmbientBrightnessStats"

    return-object v0

    .line 377
    :pswitch_17
    const-string v0, "getBrightnessEvents"

    return-object v0

    .line 373
    :pswitch_18
    const-string v0, "getStableDisplaySize"

    return-object v0

    .line 369
    :pswitch_19
    const-string/jumbo v0, "setVirtualDisplayState"

    return-object v0

    .line 365
    :pswitch_1a
    const-string/jumbo v0, "releaseVirtualDisplay"

    return-object v0

    .line 361
    :pswitch_1b
    const-string/jumbo v0, "setVirtualDisplaySurface"

    return-object v0

    .line 357
    :pswitch_1c
    const-string/jumbo v0, "resizeVirtualDisplay"

    return-object v0

    .line 353
    :pswitch_1d
    const-string v0, "createVirtualDisplay"

    return-object v0

    .line 349
    :pswitch_1e
    const-string/jumbo v0, "requestColorMode"

    return-object v0

    .line 345
    :pswitch_1f
    const-string v0, "getUserDisabledHdrTypes"

    return-object v0

    .line 341
    :pswitch_20
    const-string v0, "areUserDisabledHdrTypesAllowed"

    return-object v0

    .line 337
    :pswitch_21
    const-string/jumbo v0, "setAreUserDisabledHdrTypesAllowed"

    return-object v0

    .line 333
    :pswitch_22
    const-string/jumbo v0, "setUserDisabledHdrTypes"

    return-object v0

    .line 329
    :pswitch_23
    const-string v0, "getWifiDisplayStatus"

    return-object v0

    .line 325
    :pswitch_24
    const-string/jumbo v0, "resumeWifiDisplay"

    return-object v0

    .line 321
    :pswitch_25
    const-string/jumbo v0, "pauseWifiDisplay"

    return-object v0

    .line 317
    :pswitch_26
    const-string v0, "forgetWifiDisplay"

    return-object v0

    .line 313
    :pswitch_27
    const-string/jumbo v0, "renameWifiDisplay"

    return-object v0

    .line 309
    :pswitch_28
    const-string v0, "disconnectWifiDisplay"

    return-object v0

    .line 305
    :pswitch_29
    const-string v0, "connectWifiDisplay"

    return-object v0

    .line 301
    :pswitch_2a
    const-string/jumbo v0, "stopWifiDisplayScan"

    return-object v0

    .line 297
    :pswitch_2b
    const-string/jumbo v0, "startWifiDisplayScan"

    return-object v0

    .line 293
    :pswitch_2c
    const-string/jumbo v0, "registerCallbackWithEventMask"

    return-object v0

    .line 289
    :pswitch_2d
    const-string/jumbo v0, "registerCallback"

    return-object v0

    .line 285
    :pswitch_2e
    const-string v0, "isUidPresentOnDisplay"

    return-object v0

    .line 281
    :pswitch_2f
    const-string v0, "getDisplayIds"

    return-object v0

    .line 277
    :pswitch_30
    const-string v0, "getDisplayInfo"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 268
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1908
    const/16 v0, 0x30

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 480
    invoke-static {p1}, Landroid/hardware/display/IDisplayManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 484
    const-string v0, "android.hardware.display.IDisplayManager"

    .line 485
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 486
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 496
    packed-switch p1, :pswitch_data_1

    .line 965
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 492
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 493
    return v1

    .line 956
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 957
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 958
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayDecorationSupport(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object v3

    .line 959
    .local v3, "_result":Landroid/hardware/graphics/common/DisplayDecorationSupport;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 961
    goto/16 :goto_0

    .line 943
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/graphics/common/DisplayDecorationSupport;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 945
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 947
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 948
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 949
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/display/IDisplayManager$Stub;->setSpecBrightness(ILjava/lang/String;I)V

    .line 950
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    goto/16 :goto_0

    .line 935
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getRefreshRateSwitchingType()I

    move-result v2

    .line 936
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 938
    goto/16 :goto_0

    .line 927
    .end local v2    # "_result":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 928
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 929
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setRefreshRateSwitchingType(I)V

    .line 930
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    goto/16 :goto_0

    .line 919
    .end local v2    # "_arg0":I
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->shouldAlwaysRespectAppRequestedMode()Z

    move-result v2

    .line 920
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 922
    goto/16 :goto_0

    .line 911
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 912
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 913
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setShouldAlwaysRespectAppRequestedMode(Z)V

    .line 914
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    goto/16 :goto_0

    .line 901
    .end local v2    # "_arg0":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 902
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 903
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getSystemPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v3

    .line 904
    .local v3, "_result":Landroid/view/Display$Mode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 906
    goto/16 :goto_0

    .line 891
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/view/Display$Mode;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 892
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 893
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v3

    .line 894
    .restart local v3    # "_result":Landroid/view/Display$Mode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 896
    goto/16 :goto_0

    .line 880
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/view/Display$Mode;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 882
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$Mode;

    .line 883
    .local v3, "_arg1":Landroid/view/Display$Mode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    .line 885
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    goto/16 :goto_0

    .line 872
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/Display$Mode;
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getPreferredWideGamutColorSpaceId()I

    move-result v2

    .line 873
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    goto/16 :goto_0

    .line 863
    .end local v2    # "_result":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 864
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 865
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v3

    .line 866
    .local v3, "_result":Landroid/hardware/display/BrightnessInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 868
    goto/16 :goto_0

    .line 855
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/display/BrightnessInfo;
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getMinimumBrightnessCurve()Landroid/hardware/display/Curve;

    move-result-object v2

    .line 856
    .local v2, "_result":Landroid/hardware/display/Curve;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 858
    goto/16 :goto_0

    .line 847
    .end local v2    # "_result":Landroid/hardware/display/Curve;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 848
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 849
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryAutoBrightnessAdjustment(F)V

    .line 850
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    goto/16 :goto_0

    .line 837
    .end local v2    # "_arg0":F
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 838
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 839
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightness(I)F

    move-result v3

    .line 840
    .local v3, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 842
    goto/16 :goto_0

    .line 826
    .end local v2    # "_arg0":I
    .end local v3    # "_result":F
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 828
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 829
    .local v3, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightness(IF)V

    .line 831
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    goto/16 :goto_0

    .line 815
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":F
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 817
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 818
    .restart local v3    # "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 819
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryBrightness(IF)V

    .line 820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    goto/16 :goto_0

    .line 805
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":F
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 806
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 807
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->isMinimalPostProcessingRequested(I)Z

    move-result v3

    .line 808
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 810
    goto/16 :goto_0

    .line 797
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_12
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v2

    .line 798
    .local v2, "_result":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 800
    goto/16 :goto_0

    .line 788
    .end local v2    # "_result":Landroid/hardware/display/BrightnessConfiguration;
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 789
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 790
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v3

    .line 791
    .local v3, "_result":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 793
    goto/16 :goto_0

    .line 776
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/display/BrightnessConfiguration;
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 778
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 779
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessConfigurationForDisplay(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v4

    .line 781
    .local v4, "_result":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 783
    goto/16 :goto_0

    .line 761
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/hardware/display/BrightnessConfiguration;
    :pswitch_15
    sget-object v2, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/BrightnessConfiguration;

    .line 763
    .local v2, "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 765
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 767
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 768
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 769
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    .line 770
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    goto/16 :goto_0

    .line 748
    .end local v2    # "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_16
    sget-object v2, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/BrightnessConfiguration;

    .line 750
    .restart local v2    # "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 752
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 753
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 754
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    .line 755
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    goto/16 :goto_0

    .line 740
    .end local v2    # "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getAmbientBrightnessStats()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 741
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 743
    goto/16 :goto_0

    .line 731
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 732
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 733
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessEvents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 734
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 736
    goto/16 :goto_0

    .line 723
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_19
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v2

    .line 724
    .local v2, "_result":Landroid/graphics/Point;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 726
    goto/16 :goto_0

    .line 713
    .end local v2    # "_result":Landroid/graphics/Point;
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v2

    .line 715
    .local v2, "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 716
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 717
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplayState(Landroid/hardware/display/IVirtualDisplayCallback;Z)V

    .line 718
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    goto/16 :goto_0

    .line 704
    .end local v2    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v3    # "_arg1":Z
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v2

    .line 705
    .restart local v2    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 706
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    .line 707
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    goto/16 :goto_0

    .line 693
    .end local v2    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v2

    .line 695
    .restart local v2    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    sget-object v3, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 696
    .local v3, "_arg1":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 697
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    .line 698
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    goto/16 :goto_0

    .line 678
    .end local v2    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v3    # "_arg1":Landroid/view/Surface;
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v2

    .line 680
    .restart local v2    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 682
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 684
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 685
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/display/IDisplayManager$Stub;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V

    .line 687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    goto/16 :goto_0

    .line 662
    .end local v2    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_1e
    sget-object v2, Landroid/hardware/display/VirtualDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/VirtualDisplayConfig;

    .line 664
    .local v2, "_arg0":Landroid/hardware/display/VirtualDisplayConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v3

    .line 666
    .local v3, "_arg1":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v4

    .line 668
    .local v4, "_arg2":Landroid/media/projection/IMediaProjection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 669
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 670
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/display/IDisplayManager$Stub;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;)I

    move-result v6

    .line 671
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 673
    goto/16 :goto_0

    .line 651
    .end local v2    # "_arg0":Landroid/hardware/display/VirtualDisplayConfig;
    .end local v3    # "_arg1":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v4    # "_arg2":Landroid/media/projection/IMediaProjection;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":I
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 653
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 654
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 655
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->requestColorMode(II)V

    .line 656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    goto/16 :goto_0

    .line 643
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_20
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getUserDisabledHdrTypes()[I

    move-result-object v2

    .line 644
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 646
    goto/16 :goto_0

    .line 636
    .end local v2    # "_result":[I
    :pswitch_21
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->areUserDisabledHdrTypesAllowed()Z

    move-result v2

    .line 637
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 639
    goto/16 :goto_0

    .line 628
    .end local v2    # "_result":Z
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 629
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setAreUserDisabledHdrTypesAllowed(Z)V

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    goto/16 :goto_0

    .line 619
    .end local v2    # "_arg0":Z
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 620
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 621
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setUserDisabledHdrTypes([I)V

    .line 622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    goto/16 :goto_0

    .line 611
    .end local v2    # "_arg0":[I
    :pswitch_24
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    .line 612
    .local v2, "_result":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 614
    goto/16 :goto_0

    .line 605
    .end local v2    # "_result":Landroid/hardware/display/WifiDisplayStatus;
    :pswitch_25
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->resumeWifiDisplay()V

    .line 606
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    goto/16 :goto_0

    .line 599
    :pswitch_26
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->pauseWifiDisplay()V

    .line 600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    goto/16 :goto_0

    .line 591
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 592
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 593
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->forgetWifiDisplay(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    goto/16 :goto_0

    .line 580
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 582
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 583
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    goto/16 :goto_0

    .line 573
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_29
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->disconnectWifiDisplay()V

    .line 574
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    goto/16 :goto_0

    .line 565
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 566
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplay(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    goto :goto_0

    .line 558
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->stopWifiDisplayScan()V

    .line 559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    goto :goto_0

    .line 552
    :pswitch_2c
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->startWifiDisplayScan()V

    .line 553
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    goto :goto_0

    .line 542
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;

    move-result-object v2

    .line 544
    .local v2, "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 545
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 546
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/display/IDisplayManager$Stub;->registerCallbackWithEventMask(Landroid/hardware/display/IDisplayManagerCallback;J)V

    .line 547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    goto :goto_0

    .line 533
    .end local v2    # "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    .end local v3    # "_arg1":J
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;

    move-result-object v2

    .line 534
    .restart local v2    # "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 535
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    goto :goto_0

    .line 521
    .end local v2    # "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 523
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 524
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->isUidPresentOnDisplay(II)Z

    move-result v4

    .line 526
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 528
    goto :goto_0

    .line 511
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 512
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 513
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayIds(Z)[I

    move-result-object v3

    .line 514
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 516
    goto :goto_0

    .line 501
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":[I
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 502
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v3

    .line 504
    .local v3, "_result":Landroid/view/DisplayInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 506
    nop

    .line 968
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/view/DisplayInfo;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
