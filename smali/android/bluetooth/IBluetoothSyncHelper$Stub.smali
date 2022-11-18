.class public abstract Landroid/bluetooth/IBluetoothSyncHelper$Stub;
.super Landroid/os/Binder;
.source "IBluetoothSyncHelper.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothSyncHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothSyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothSyncHelper$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addBroadcastSource:I = 0xe

.field static final blacklist TRANSACTION_connect:I = 0x1

.field static final blacklist TRANSACTION_disconnect:I = 0x2

.field static final blacklist TRANSACTION_getAllBroadcastSourceInformation:I = 0x13

.field static final blacklist TRANSACTION_getConnectedDevices:I = 0x3

.field static final blacklist TRANSACTION_getConnectionPolicy:I = 0x7

.field static final blacklist TRANSACTION_getConnectionState:I = 0x5

.field static final blacklist TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4

.field static final blacklist TRANSACTION_registerAppCallback:I = 0xa

.field static final blacklist TRANSACTION_removeBroadcastSource:I = 0x12

.field static final blacklist TRANSACTION_searchforLeAudioBroadcasters:I = 0xc

.field static final blacklist TRANSACTION_selectBroadcastSource:I = 0xf

.field static final blacklist TRANSACTION_setBroadcastCode:I = 0x11

.field static final blacklist TRANSACTION_setConnectionPolicy:I = 0x6

.field static final blacklist TRANSACTION_startScanOffload:I = 0x8

.field static final blacklist TRANSACTION_stopScanOffload:I = 0x9

.field static final blacklist TRANSACTION_stopSearchforLeAudioBroadcasters:I = 0xd

.field static final blacklist TRANSACTION_unregisterAppCallback:I = 0xb

.field static final blacklist TRANSACTION_updateBroadcastSource:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 101
    const-string v0, "android.bluetooth.IBluetoothSyncHelper"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothSyncHelper$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSyncHelper;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 109
    if-nez p0, :cond_0

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothSyncHelper"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 113
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothSyncHelper;

    if-eqz v1, :cond_1

    .line 114
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothSyncHelper;

    return-object v1

    .line 116
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothSyncHelper$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothSyncHelper$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 125
    packed-switch p0, :pswitch_data_0

    .line 205
    const/4 v0, 0x0

    return-object v0

    .line 201
    :pswitch_0
    const-string v0, "getAllBroadcastSourceInformation"

    return-object v0

    .line 197
    :pswitch_1
    const-string/jumbo v0, "removeBroadcastSource"

    return-object v0

    .line 193
    :pswitch_2
    const-string/jumbo v0, "setBroadcastCode"

    return-object v0

    .line 189
    :pswitch_3
    const-string/jumbo v0, "updateBroadcastSource"

    return-object v0

    .line 185
    :pswitch_4
    const-string/jumbo v0, "selectBroadcastSource"

    return-object v0

    .line 181
    :pswitch_5
    const-string v0, "addBroadcastSource"

    return-object v0

    .line 177
    :pswitch_6
    const-string/jumbo v0, "stopSearchforLeAudioBroadcasters"

    return-object v0

    .line 173
    :pswitch_7
    const-string/jumbo v0, "searchforLeAudioBroadcasters"

    return-object v0

    .line 169
    :pswitch_8
    const-string/jumbo v0, "unregisterAppCallback"

    return-object v0

    .line 165
    :pswitch_9
    const-string/jumbo v0, "registerAppCallback"

    return-object v0

    .line 161
    :pswitch_a
    const-string/jumbo v0, "stopScanOffload"

    return-object v0

    .line 157
    :pswitch_b
    const-string/jumbo v0, "startScanOffload"

    return-object v0

    .line 153
    :pswitch_c
    const-string v0, "getConnectionPolicy"

    return-object v0

    .line 149
    :pswitch_d
    const-string/jumbo v0, "setConnectionPolicy"

    return-object v0

    .line 145
    :pswitch_e
    const-string v0, "getConnectionState"

    return-object v0

    .line 141
    :pswitch_f
    const-string v0, "getDevicesMatchingConnectionStates"

    return-object v0

    .line 137
    :pswitch_10
    const-string v0, "getConnectedDevices"

    return-object v0

    .line 133
    :pswitch_11
    const-string v0, "disconnect"

    return-object v0

    .line 129
    :pswitch_12
    const-string v0, "connect"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 120
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 899
    const/16 v0, 0x12

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 212
    invoke-static {p1}, Landroid/bluetooth/IBluetoothSyncHelper$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 216
    const-string v0, "android.bluetooth.IBluetoothSyncHelper"

    .line 217
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 218
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 228
    packed-switch p1, :pswitch_data_1

    .line 486
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 224
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    return v1

    .line 475
    :pswitch_1
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 477
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 478
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothSyncHelper$Stub;->getAllBroadcastSourceInformation(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v4

    .line 480
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 482
    goto/16 :goto_0

    .line 459
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceInfo;>;"
    :pswitch_2
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 461
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 463
    .local v3, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 465
    .local v4, "_arg2":Z
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 466
    .local v5, "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 467
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothSyncHelper$Stub;->removeBroadcastSource(Landroid/bluetooth/BluetoothDevice;BZLandroid/content/AttributionSource;)Z

    move-result v6

    .line 468
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 470
    goto/16 :goto_0

    .line 443
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":B
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Landroid/content/AttributionSource;
    .end local v6    # "_result":Z
    :pswitch_3
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 445
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/bluetooth/BleBroadcastSourceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 447
    .local v3, "_arg1":Landroid/bluetooth/BleBroadcastSourceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 449
    .restart local v4    # "_arg2":Z
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 450
    .restart local v5    # "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothSyncHelper$Stub;->setBroadcastCode(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z

    move-result v6

    .line 452
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 454
    goto/16 :goto_0

    .line 427
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/bluetooth/BleBroadcastSourceInfo;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Landroid/content/AttributionSource;
    .end local v6    # "_result":Z
    :pswitch_4
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 429
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/bluetooth/BleBroadcastSourceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 431
    .restart local v3    # "_arg1":Landroid/bluetooth/BleBroadcastSourceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 433
    .restart local v4    # "_arg2":Z
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 434
    .restart local v5    # "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothSyncHelper$Stub;->updateBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z

    move-result v6

    .line 436
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 438
    goto/16 :goto_0

    .line 411
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/bluetooth/BleBroadcastSourceInfo;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Landroid/content/AttributionSource;
    .end local v6    # "_result":Z
    :pswitch_5
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 413
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/le/ScanResult;

    .line 415
    .local v3, "_arg1":Landroid/bluetooth/le/ScanResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 417
    .restart local v4    # "_arg2":Z
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 418
    .restart local v5    # "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothSyncHelper$Stub;->selectBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanResult;ZLandroid/content/AttributionSource;)Z

    move-result v6

    .line 420
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 422
    goto/16 :goto_0

    .line 395
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/bluetooth/le/ScanResult;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Landroid/content/AttributionSource;
    .end local v6    # "_result":Z
    :pswitch_6
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 397
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/bluetooth/BleBroadcastSourceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 399
    .local v3, "_arg1":Landroid/bluetooth/BleBroadcastSourceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 401
    .restart local v4    # "_arg2":Z
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 402
    .restart local v5    # "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothSyncHelper$Stub;->addBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z

    move-result v6

    .line 404
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 406
    goto/16 :goto_0

    .line 383
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/bluetooth/BleBroadcastSourceInfo;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Landroid/content/AttributionSource;
    .end local v6    # "_result":Z
    :pswitch_7
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 385
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 386
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothSyncHelper$Stub;->stopSearchforLeAudioBroadcasters(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v4

    .line 388
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 390
    goto/16 :goto_0

    .line 371
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    :pswitch_8
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 373
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 374
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothSyncHelper$Stub;->searchforLeAudioBroadcasters(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v4

    .line 376
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 378
    goto/16 :goto_0

    .line 358
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    :pswitch_9
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 360
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;

    move-result-object v3

    .line 362
    .local v3, "_arg1":Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 363
    .local v4, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothSyncHelper$Stub;->unregisterAppCallback(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;Landroid/content/AttributionSource;)V

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    goto/16 :goto_0

    .line 345
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_a
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 347
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;

    move-result-object v3

    .line 349
    .restart local v3    # "_arg1":Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 350
    .restart local v4    # "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothSyncHelper$Stub;->registerAppCallback(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;Landroid/content/AttributionSource;)V

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    goto/16 :goto_0

    .line 331
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_b
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 333
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 335
    .local v3, "_arg1":Z
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 336
    .restart local v4    # "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothSyncHelper$Stub;->stopScanOffload(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;)Z

    move-result v5

    .line 338
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 340
    goto/16 :goto_0

    .line 317
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    .end local v5    # "_result":Z
    :pswitch_c
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 319
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 321
    .restart local v3    # "_arg1":Z
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 322
    .restart local v4    # "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothSyncHelper$Stub;->startScanOffload(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;)Z

    move-result v5

    .line 324
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 326
    goto/16 :goto_0

    .line 305
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    .end local v5    # "_result":Z
    :pswitch_d
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 307
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 308
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothSyncHelper$Stub;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v4

    .line 310
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    goto/16 :goto_0

    .line 291
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":I
    :pswitch_e
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 293
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 295
    .local v3, "_arg1":I
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 296
    .local v4, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothSyncHelper$Stub;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v5

    .line 298
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 300
    goto/16 :goto_0

    .line 279
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    .end local v5    # "_result":Z
    :pswitch_f
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 281
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 282
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothSyncHelper$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v4

    .line 284
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    goto :goto_0

    .line 267
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":I
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 269
    .local v2, "_arg0":[I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 270
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothSyncHelper$Stub;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v4

    .line 272
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 274
    goto :goto_0

    .line 257
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_11
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 258
    .local v2, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothSyncHelper$Stub;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v3

    .line 260
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 262
    goto :goto_0

    .line 245
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_12
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 247
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 248
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothSyncHelper$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v4

    .line 250
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 252
    goto :goto_0

    .line 233
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    :pswitch_13
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 235
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 236
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothSyncHelper$Stub;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v4

    .line 238
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 240
    nop

    .line 489
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
