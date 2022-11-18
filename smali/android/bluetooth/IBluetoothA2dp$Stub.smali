.class public abstract Landroid/bluetooth/IBluetoothA2dp$Stub;
.super Landroid/os/Binder;
.source "IBluetoothA2dp.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothA2dp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothA2dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothA2dp"

.field static final blacklist TRANSACTION_connect:I = 0x1

.field static final blacklist TRANSACTION_connectWithAttribution:I = 0x2

.field static final blacklist TRANSACTION_disableOptionalCodecs:I = 0x15

.field static final blacklist TRANSACTION_disconnect:I = 0x3

.field static final blacklist TRANSACTION_disconnectWithAttribution:I = 0x4

.field static final blacklist TRANSACTION_enableOptionalCodecs:I = 0x14

.field static final blacklist TRANSACTION_getActiveDevice:I = 0xc

.field static final blacklist TRANSACTION_getBufferConstraints:I = 0x1a

.field static final blacklist TRANSACTION_getCodecStatus:I = 0x12

.field static final blacklist TRANSACTION_getConnectedDevices:I = 0x5

.field static final blacklist TRANSACTION_getConnectedDevicesWithAttribution:I = 0x6

.field static final blacklist TRANSACTION_getConnectionPolicy:I = 0xe

.field static final blacklist TRANSACTION_getConnectionState:I = 0x9

.field static final blacklist TRANSACTION_getConnectionStateWithAttribution:I = 0xa

.field static final blacklist TRANSACTION_getDevicesMatchingConnectionStates:I = 0x7

.field static final blacklist TRANSACTION_getDevicesMatchingConnectionStatesWithAttribution:I = 0x8

.field static final blacklist TRANSACTION_getDynamicBufferSupport:I = 0x19

.field static final blacklist TRANSACTION_isA2dpPlaying:I = 0x11

.field static final blacklist TRANSACTION_isAvrcpAbsoluteVolumeSupported:I = 0xf

.field static final blacklist TRANSACTION_isOptionalCodecsEnabled:I = 0x17

.field static final blacklist TRANSACTION_isOptionalCodecsSupported:I = 0x16

.field static final blacklist TRANSACTION_setActiveDevice:I = 0xb

.field static final blacklist TRANSACTION_setAvrcpAbsoluteVolume:I = 0x10

.field static final blacklist TRANSACTION_setBufferLengthMillis:I = 0x1b

.field static final blacklist TRANSACTION_setCodecConfigPreference:I = 0x13

.field static final blacklist TRANSACTION_setConnectionPolicy:I = 0xd

.field static final blacklist TRANSACTION_setOptionalCodecsEnabled:I = 0x18


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 108
    const-string v0, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dp;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 116
    if-nez p0, :cond_0

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothA2dp"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 120
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothA2dp;

    if-eqz v1, :cond_1

    .line 121
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothA2dp;

    return-object v1

    .line 123
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 132
    packed-switch p0, :pswitch_data_0

    .line 244
    const/4 v0, 0x0

    return-object v0

    .line 240
    :pswitch_0
    const-string/jumbo v0, "setBufferLengthMillis"

    return-object v0

    .line 236
    :pswitch_1
    const-string v0, "getBufferConstraints"

    return-object v0

    .line 232
    :pswitch_2
    const-string v0, "getDynamicBufferSupport"

    return-object v0

    .line 228
    :pswitch_3
    const-string/jumbo v0, "setOptionalCodecsEnabled"

    return-object v0

    .line 224
    :pswitch_4
    const-string v0, "isOptionalCodecsEnabled"

    return-object v0

    .line 220
    :pswitch_5
    const-string v0, "isOptionalCodecsSupported"

    return-object v0

    .line 216
    :pswitch_6
    const-string v0, "disableOptionalCodecs"

    return-object v0

    .line 212
    :pswitch_7
    const-string v0, "enableOptionalCodecs"

    return-object v0

    .line 208
    :pswitch_8
    const-string/jumbo v0, "setCodecConfigPreference"

    return-object v0

    .line 204
    :pswitch_9
    const-string v0, "getCodecStatus"

    return-object v0

    .line 200
    :pswitch_a
    const-string v0, "isA2dpPlaying"

    return-object v0

    .line 196
    :pswitch_b
    const-string/jumbo v0, "setAvrcpAbsoluteVolume"

    return-object v0

    .line 192
    :pswitch_c
    const-string v0, "isAvrcpAbsoluteVolumeSupported"

    return-object v0

    .line 188
    :pswitch_d
    const-string v0, "getConnectionPolicy"

    return-object v0

    .line 184
    :pswitch_e
    const-string/jumbo v0, "setConnectionPolicy"

    return-object v0

    .line 180
    :pswitch_f
    const-string v0, "getActiveDevice"

    return-object v0

    .line 176
    :pswitch_10
    const-string/jumbo v0, "setActiveDevice"

    return-object v0

    .line 172
    :pswitch_11
    const-string v0, "getConnectionStateWithAttribution"

    return-object v0

    .line 168
    :pswitch_12
    const-string v0, "getConnectionState"

    return-object v0

    .line 164
    :pswitch_13
    const-string v0, "getDevicesMatchingConnectionStatesWithAttribution"

    return-object v0

    .line 160
    :pswitch_14
    const-string v0, "getDevicesMatchingConnectionStates"

    return-object v0

    .line 156
    :pswitch_15
    const-string v0, "getConnectedDevicesWithAttribution"

    return-object v0

    .line 152
    :pswitch_16
    const-string v0, "getConnectedDevices"

    return-object v0

    .line 148
    :pswitch_17
    const-string v0, "disconnectWithAttribution"

    return-object v0

    .line 144
    :pswitch_18
    const-string v0, "disconnect"

    return-object v0

    .line 140
    :pswitch_19
    const-string v0, "connectWithAttribution"

    return-object v0

    .line 136
    :pswitch_1a
    const-string v0, "connect"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 127
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 987
    const/16 v0, 0x1a

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 251
    invoke-static {p1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 255
    const-string v0, "android.bluetooth.IBluetoothA2dp"

    .line 256
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 257
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 267
    packed-switch p1, :pswitch_data_1

    .line 569
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 263
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    return v1

    .line 556
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 558
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 560
    .local v3, "_arg1":I
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 562
    .local v4, "_arg2":Landroid/content/AttributionSource;
    sget-object v5, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 563
    .local v5, "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setBufferLengthMillis(IILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 565
    goto/16 :goto_0

    .line 546
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    .end local v5    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_2
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 548
    .local v2, "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 549
    .local v3, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getBufferConstraints(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 551
    goto/16 :goto_0

    .line 536
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_3
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 538
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 539
    .restart local v3    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getDynamicBufferSupport(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 541
    goto/16 :goto_0

    .line 524
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_4
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 526
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 528
    .local v3, "_arg1":I
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 529
    .restart local v4    # "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)V

    .line 531
    goto/16 :goto_0

    .line 512
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_5
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 514
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 516
    .local v3, "_arg1":Landroid/content/AttributionSource;
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 517
    .local v4, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->isOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 519
    goto/16 :goto_0

    .line 500
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_6
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 502
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 504
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 505
    .restart local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->isOptionalCodecsSupported(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 507
    goto/16 :goto_0

    .line 490
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_7
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 492
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 493
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 494
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothA2dp$Stub;->disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V

    .line 495
    goto/16 :goto_0

    .line 480
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_8
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 482
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 483
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothA2dp$Stub;->enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V

    .line 485
    goto/16 :goto_0

    .line 468
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_9
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 470
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothCodecConfig;

    .line 472
    .local v3, "_arg1":Landroid/bluetooth/BluetoothCodecConfig;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 473
    .local v4, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;Landroid/content/AttributionSource;)V

    .line 475
    goto/16 :goto_0

    .line 456
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothCodecConfig;
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_a
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 458
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 460
    .local v3, "_arg1":Landroid/content/AttributionSource;
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 461
    .local v4, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 463
    goto/16 :goto_0

    .line 444
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_b
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 446
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 448
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 449
    .restart local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 451
    goto/16 :goto_0

    .line 434
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 436
    .local v2, "_arg0":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 437
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setAvrcpAbsoluteVolume(ILandroid/content/AttributionSource;)V

    .line 439
    goto/16 :goto_0

    .line 426
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_d
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 427
    .local v2, "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothA2dp$Stub;->isAvrcpAbsoluteVolumeSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 429
    goto/16 :goto_0

    .line 414
    .end local v2    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_e
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 416
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 418
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 419
    .restart local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 421
    goto/16 :goto_0

    .line 400
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_f
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 402
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 404
    .local v3, "_arg1":I
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 406
    .local v4, "_arg2":Landroid/content/AttributionSource;
    sget-object v5, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 407
    .restart local v5    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 409
    goto/16 :goto_0

    .line 390
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    .end local v5    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_10
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 392
    .local v2, "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 393
    .local v3, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getActiveDevice(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 395
    goto/16 :goto_0

    .line 378
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_11
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 380
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 382
    .local v3, "_arg1":Landroid/content/AttributionSource;
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 383
    .local v4, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 385
    goto/16 :goto_0

    .line 366
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_12
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 368
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 370
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 371
    .restart local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getConnectionStateWithAttribution(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 373
    goto/16 :goto_0

    .line 356
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_13
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 358
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 359
    .local v3, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 361
    goto/16 :goto_0

    .line 344
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 346
    .local v2, "_arg0":[I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 348
    .local v3, "_arg1":Landroid/content/AttributionSource;
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 349
    .restart local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getDevicesMatchingConnectionStatesWithAttribution([ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 351
    goto/16 :goto_0

    .line 334
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 336
    .restart local v2    # "_arg0":[I
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 337
    .local v3, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getDevicesMatchingConnectionStates([ILcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 339
    goto/16 :goto_0

    .line 324
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_16
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 326
    .local v2, "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 327
    .restart local v3    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getConnectedDevicesWithAttribution(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 329
    goto/16 :goto_0

    .line 316
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_17
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 317
    .local v2, "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getConnectedDevices(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 319
    goto :goto_0

    .line 304
    .end local v2    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_18
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 306
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 308
    .local v3, "_arg1":Landroid/content/AttributionSource;
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 309
    .restart local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->disconnectWithAttribution(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 311
    goto :goto_0

    .line 294
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_19
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 296
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 297
    .local v3, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothA2dp$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 299
    goto :goto_0

    .line 282
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_1a
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 284
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 286
    .local v3, "_arg1":Landroid/content/AttributionSource;
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 287
    .restart local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->connectWithAttribution(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 289
    goto :goto_0

    .line 272
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_1b
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 274
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 275
    .local v3, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothA2dp$Stub;->connect(Landroid/bluetooth/BluetoothDevice;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 277
    nop

    .line 572
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
