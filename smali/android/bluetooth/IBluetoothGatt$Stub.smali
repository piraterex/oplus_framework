.class public abstract Landroid/bluetooth/IBluetoothGatt$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGatt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGatt"

.field static final blacklist TRANSACTION_addService:I = 0x32

.field static final blacklist TRANSACTION_beginReliableWrite:I = 0x26

.field static final blacklist TRANSACTION_clearServices:I = 0x34

.field static final blacklist TRANSACTION_clientConnect:I = 0x19

.field static final blacklist TRANSACTION_clientDisconnect:I = 0x1a

.field static final blacklist TRANSACTION_clientReadPhy:I = 0x1c

.field static final blacklist TRANSACTION_clientSetPreferredPhy:I = 0x1b

.field static final blacklist TRANSACTION_configureMTU:I = 0x29

.field static final blacklist TRANSACTION_connectionParameterUpdate:I = 0x2a

.field static final blacklist TRANSACTION_disconnectAll:I = 0x37

.field static final blacklist TRANSACTION_discoverServiceByUuid:I = 0x1f

.field static final blacklist TRANSACTION_discoverServices:I = 0x1e

.field static final blacklist TRANSACTION_enableAdvertisingSet:I = 0xc

.field static final blacklist TRANSACTION_endReliableWrite:I = 0x27

.field static final blacklist TRANSACTION_flushPendingBatchResults:I = 0x8

.field static final blacklist TRANSACTION_getDevicesMatchingConnectionStates:I = 0x1

.field static final blacklist TRANSACTION_getOwnAddress:I = 0xb

.field static final blacklist TRANSACTION_leConnectionUpdate:I = 0x2b

.field static final blacklist TRANSACTION_leSubrateRequest:I = 0x3a

.field static final blacklist TRANSACTION_numHwTrackFiltersAvailable:I = 0x39

.field static final blacklist TRANSACTION_readCharacteristic:I = 0x20

.field static final blacklist TRANSACTION_readDescriptor:I = 0x23

.field static final blacklist TRANSACTION_readRemoteRssi:I = 0x28

.field static final blacklist TRANSACTION_readUsingCharacteristicUuid:I = 0x21

.field static final blacklist TRANSACTION_refreshDevice:I = 0x1d

.field static final blacklist TRANSACTION_registerClient:I = 0x17

.field static final blacklist TRANSACTION_registerForNotification:I = 0x25

.field static final blacklist TRANSACTION_registerScanner:I = 0x2

.field static final blacklist TRANSACTION_registerServer:I = 0x2c

.field static final blacklist TRANSACTION_registerSync:I = 0x13

.field static final blacklist TRANSACTION_removeService:I = 0x33

.field static final blacklist TRANSACTION_sendNotification:I = 0x36

.field static final blacklist TRANSACTION_sendResponse:I = 0x35

.field static final blacklist TRANSACTION_serverConnect:I = 0x2e

.field static final blacklist TRANSACTION_serverDisconnect:I = 0x2f

.field static final blacklist TRANSACTION_serverReadPhy:I = 0x31

.field static final blacklist TRANSACTION_serverSetPreferredPhy:I = 0x30

.field static final blacklist TRANSACTION_setAdvertisingData:I = 0xd

.field static final blacklist TRANSACTION_setAdvertisingParameters:I = 0xf

.field static final blacklist TRANSACTION_setPeriodicAdvertisingData:I = 0x11

.field static final blacklist TRANSACTION_setPeriodicAdvertisingEnable:I = 0x12

.field static final blacklist TRANSACTION_setPeriodicAdvertisingParameters:I = 0x10

.field static final blacklist TRANSACTION_setScanResponseData:I = 0xe

.field static final blacklist TRANSACTION_startAdvertisingSet:I = 0x9

.field static final blacklist TRANSACTION_startScan:I = 0x4

.field static final blacklist TRANSACTION_startScanForIntent:I = 0x5

.field static final blacklist TRANSACTION_stopAdvertisingSet:I = 0xa

.field static final blacklist TRANSACTION_stopScan:I = 0x7

.field static final blacklist TRANSACTION_stopScanForIntent:I = 0x6

.field static final blacklist TRANSACTION_subrateModeRequest:I = 0x3b

.field static final blacklist TRANSACTION_transferSetInfo:I = 0x16

.field static final blacklist TRANSACTION_transferSync:I = 0x15

.field static final blacklist TRANSACTION_unregAll:I = 0x38

.field static final blacklist TRANSACTION_unregisterClient:I = 0x18

.field static final blacklist TRANSACTION_unregisterScanner:I = 0x3

.field static final blacklist TRANSACTION_unregisterServer:I = 0x2d

.field static final blacklist TRANSACTION_unregisterSync:I = 0x14

.field static final blacklist TRANSACTION_writeCharacteristic:I = 0x22

.field static final blacklist TRANSACTION_writeDescriptor:I = 0x24


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 201
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 202
    const-string v0, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 210
    if-nez p0, :cond_0

    .line 211
    const/4 v0, 0x0

    return-object v0

    .line 213
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothGatt"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 214
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_1

    .line 215
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothGatt;

    return-object v1

    .line 217
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 226
    packed-switch p0, :pswitch_data_0

    .line 466
    const/4 v0, 0x0

    return-object v0

    .line 462
    :pswitch_0
    const-string/jumbo v0, "subrateModeRequest"

    return-object v0

    .line 458
    :pswitch_1
    const-string v0, "leSubrateRequest"

    return-object v0

    .line 454
    :pswitch_2
    const-string/jumbo v0, "numHwTrackFiltersAvailable"

    return-object v0

    .line 450
    :pswitch_3
    const-string/jumbo v0, "unregAll"

    return-object v0

    .line 446
    :pswitch_4
    const-string v0, "disconnectAll"

    return-object v0

    .line 442
    :pswitch_5
    const-string/jumbo v0, "sendNotification"

    return-object v0

    .line 438
    :pswitch_6
    const-string/jumbo v0, "sendResponse"

    return-object v0

    .line 434
    :pswitch_7
    const-string v0, "clearServices"

    return-object v0

    .line 430
    :pswitch_8
    const-string/jumbo v0, "removeService"

    return-object v0

    .line 426
    :pswitch_9
    const-string v0, "addService"

    return-object v0

    .line 422
    :pswitch_a
    const-string/jumbo v0, "serverReadPhy"

    return-object v0

    .line 418
    :pswitch_b
    const-string/jumbo v0, "serverSetPreferredPhy"

    return-object v0

    .line 414
    :pswitch_c
    const-string/jumbo v0, "serverDisconnect"

    return-object v0

    .line 410
    :pswitch_d
    const-string/jumbo v0, "serverConnect"

    return-object v0

    .line 406
    :pswitch_e
    const-string/jumbo v0, "unregisterServer"

    return-object v0

    .line 402
    :pswitch_f
    const-string/jumbo v0, "registerServer"

    return-object v0

    .line 398
    :pswitch_10
    const-string v0, "leConnectionUpdate"

    return-object v0

    .line 394
    :pswitch_11
    const-string v0, "connectionParameterUpdate"

    return-object v0

    .line 390
    :pswitch_12
    const-string v0, "configureMTU"

    return-object v0

    .line 386
    :pswitch_13
    const-string/jumbo v0, "readRemoteRssi"

    return-object v0

    .line 382
    :pswitch_14
    const-string v0, "endReliableWrite"

    return-object v0

    .line 378
    :pswitch_15
    const-string v0, "beginReliableWrite"

    return-object v0

    .line 374
    :pswitch_16
    const-string/jumbo v0, "registerForNotification"

    return-object v0

    .line 370
    :pswitch_17
    const-string/jumbo v0, "writeDescriptor"

    return-object v0

    .line 366
    :pswitch_18
    const-string/jumbo v0, "readDescriptor"

    return-object v0

    .line 362
    :pswitch_19
    const-string/jumbo v0, "writeCharacteristic"

    return-object v0

    .line 358
    :pswitch_1a
    const-string/jumbo v0, "readUsingCharacteristicUuid"

    return-object v0

    .line 354
    :pswitch_1b
    const-string/jumbo v0, "readCharacteristic"

    return-object v0

    .line 350
    :pswitch_1c
    const-string v0, "discoverServiceByUuid"

    return-object v0

    .line 346
    :pswitch_1d
    const-string v0, "discoverServices"

    return-object v0

    .line 342
    :pswitch_1e
    const-string/jumbo v0, "refreshDevice"

    return-object v0

    .line 338
    :pswitch_1f
    const-string v0, "clientReadPhy"

    return-object v0

    .line 334
    :pswitch_20
    const-string v0, "clientSetPreferredPhy"

    return-object v0

    .line 330
    :pswitch_21
    const-string v0, "clientDisconnect"

    return-object v0

    .line 326
    :pswitch_22
    const-string v0, "clientConnect"

    return-object v0

    .line 322
    :pswitch_23
    const-string/jumbo v0, "unregisterClient"

    return-object v0

    .line 318
    :pswitch_24
    const-string/jumbo v0, "registerClient"

    return-object v0

    .line 314
    :pswitch_25
    const-string/jumbo v0, "transferSetInfo"

    return-object v0

    .line 310
    :pswitch_26
    const-string/jumbo v0, "transferSync"

    return-object v0

    .line 306
    :pswitch_27
    const-string/jumbo v0, "unregisterSync"

    return-object v0

    .line 302
    :pswitch_28
    const-string/jumbo v0, "registerSync"

    return-object v0

    .line 298
    :pswitch_29
    const-string/jumbo v0, "setPeriodicAdvertisingEnable"

    return-object v0

    .line 294
    :pswitch_2a
    const-string/jumbo v0, "setPeriodicAdvertisingData"

    return-object v0

    .line 290
    :pswitch_2b
    const-string/jumbo v0, "setPeriodicAdvertisingParameters"

    return-object v0

    .line 286
    :pswitch_2c
    const-string/jumbo v0, "setAdvertisingParameters"

    return-object v0

    .line 282
    :pswitch_2d
    const-string/jumbo v0, "setScanResponseData"

    return-object v0

    .line 278
    :pswitch_2e
    const-string/jumbo v0, "setAdvertisingData"

    return-object v0

    .line 274
    :pswitch_2f
    const-string v0, "enableAdvertisingSet"

    return-object v0

    .line 270
    :pswitch_30
    const-string v0, "getOwnAddress"

    return-object v0

    .line 266
    :pswitch_31
    const-string/jumbo v0, "stopAdvertisingSet"

    return-object v0

    .line 262
    :pswitch_32
    const-string/jumbo v0, "startAdvertisingSet"

    return-object v0

    .line 258
    :pswitch_33
    const-string v0, "flushPendingBatchResults"

    return-object v0

    .line 254
    :pswitch_34
    const-string/jumbo v0, "stopScan"

    return-object v0

    .line 250
    :pswitch_35
    const-string/jumbo v0, "stopScanForIntent"

    return-object v0

    .line 246
    :pswitch_36
    const-string/jumbo v0, "startScanForIntent"

    return-object v0

    .line 242
    :pswitch_37
    const-string/jumbo v0, "startScan"

    return-object v0

    .line 238
    :pswitch_38
    const-string/jumbo v0, "unregisterScanner"

    return-object v0

    .line 234
    :pswitch_39
    const-string/jumbo v0, "registerScanner"

    return-object v0

    .line 230
    :pswitch_3a
    const-string v0, "getDevicesMatchingConnectionStates"

    return-object v0

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 221
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2438
    const/16 v0, 0x3a

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 473
    invoke-static {p1}, Landroid/bluetooth/IBluetoothGatt$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 26
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 477
    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    const-string v14, "android.bluetooth.IBluetoothGatt"

    .line 478
    .local v14, "descriptor":Ljava/lang/String;
    const/4 v15, 0x1

    if-lt v12, v15, :cond_0

    const v0, 0xffffff

    if-gt v12, v0, :cond_0

    .line 479
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    :cond_0
    packed-switch v12, :pswitch_data_0

    .line 489
    move-object/from16 v10, p3

    packed-switch v12, :pswitch_data_1

    .line 1419
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 485
    :pswitch_0
    move-object/from16 v10, p3

    invoke-virtual {v10, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 486
    return v15

    .line 1406
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1408
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1410
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1412
    .local v2, "_arg2":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 1413
    .local v3, "_arg3":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1414
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->subrateModeRequest(ILjava/lang/String;ILandroid/content/AttributionSource;)V

    .line 1415
    goto/16 :goto_0

    .line 1384
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1386
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1388
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1390
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1392
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1394
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1396
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1398
    .local v21, "_arg6":I
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/content/AttributionSource;

    .line 1399
    .local v22, "_arg7":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1400
    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGatt$Stub;->leSubrateRequest(ILjava/lang/String;IIIIILandroid/content/AttributionSource;)V

    .line 1401
    goto/16 :goto_0

    .line 1374
    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":Landroid/content/AttributionSource;
    :pswitch_3
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1376
    .local v0, "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1377
    .local v1, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1378
    invoke-virtual {v11, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->numHwTrackFiltersAvailable(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1379
    goto/16 :goto_0

    .line 1364
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_4
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1366
    .restart local v0    # "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1367
    .restart local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1368
    invoke-virtual {v11, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregAll(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1369
    goto/16 :goto_0

    .line 1354
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_5
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1356
    .restart local v0    # "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1357
    .restart local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1358
    invoke-virtual {v11, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->disconnectAll(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1359
    goto/16 :goto_0

    .line 1334
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1336
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1338
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1340
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 1342
    .local v17, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 1344
    .local v18, "_arg4":[B
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/AttributionSource;

    .line 1346
    .local v19, "_arg5":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1347
    .local v20, "_arg6":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1348
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendNotification(ILjava/lang/String;IZ[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1349
    goto/16 :goto_0

    .line 1312
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Z
    .end local v18    # "_arg4":[B
    .end local v19    # "_arg5":Landroid/content/AttributionSource;
    .end local v20    # "_arg6":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1314
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1316
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1318
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1320
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1322
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v20

    .line 1324
    .local v20, "_arg5":[B
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/content/AttributionSource;

    .line 1326
    .local v21, "_arg6":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1327
    .local v22, "_arg7":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1328
    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendResponse(ILjava/lang/String;III[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1329
    goto/16 :goto_0

    .line 1300
    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":[B
    .end local v21    # "_arg6":Landroid/content/AttributionSource;
    .end local v22    # "_arg7":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1302
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1304
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1305
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1306
    invoke-virtual {v11, v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->clearServices(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1307
    goto/16 :goto_0

    .line 1286
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1288
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1290
    .local v1, "_arg1":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1292
    .local v2, "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1293
    .local v3, "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1294
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->removeService(IILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1295
    goto/16 :goto_0

    .line 1272
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1274
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/bluetooth/BluetoothGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 1276
    .local v1, "_arg1":Landroid/bluetooth/BluetoothGattService;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1278
    .restart local v2    # "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1279
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1280
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->addService(ILandroid/bluetooth/BluetoothGattService;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1281
    goto/16 :goto_0

    .line 1258
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothGattService;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1260
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1262
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1264
    .restart local v2    # "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1265
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1266
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverReadPhy(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1267
    goto/16 :goto_0

    .line 1238
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1240
    .restart local v8    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1242
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1244
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1246
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1248
    .local v18, "_arg4":I
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/AttributionSource;

    .line 1250
    .local v19, "_arg5":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1251
    .local v20, "_arg6":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1252
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverSetPreferredPhy(ILjava/lang/String;IIILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1253
    goto/16 :goto_0

    .line 1224
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":Landroid/content/AttributionSource;
    .end local v20    # "_arg6":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1226
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1228
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1230
    .restart local v2    # "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1231
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1232
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverDisconnect(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1233
    goto/16 :goto_0

    .line 1206
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1208
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1210
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 1212
    .local v9, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1214
    .local v16, "_arg3":I
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/AttributionSource;

    .line 1216
    .local v17, "_arg4":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1217
    .local v18, "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1218
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverConnect(ILjava/lang/String;ZILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1219
    goto/16 :goto_0

    .line 1194
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Z
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Landroid/content/AttributionSource;
    .end local v18    # "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1196
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1198
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1199
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1200
    invoke-virtual {v11, v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterServer(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1201
    goto/16 :goto_0

    .line 1178
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_10
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/ParcelUuid;

    .line 1180
    .local v6, "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v7

    .line 1182
    .local v7, "_arg1":Landroid/bluetooth/IBluetoothGattServerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 1184
    .local v8, "_arg2":Z
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/AttributionSource;

    .line 1186
    .local v9, "_arg3":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1187
    .local v16, "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1188
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;ZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1189
    goto/16 :goto_0

    .line 1152
    .end local v6    # "_arg0":Landroid/os/ParcelUuid;
    .end local v7    # "_arg1":Landroid/bluetooth/IBluetoothGattServerCallback;
    .end local v8    # "_arg2":Z
    .end local v9    # "_arg3":Landroid/content/AttributionSource;
    .end local v16    # "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1154
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1156
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1158
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1160
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1162
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1164
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1166
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1168
    .local v23, "_arg7":I
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/content/AttributionSource;

    .line 1170
    .local v24, "_arg8":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1171
    .local v25, "_arg9":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1172
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Landroid/bluetooth/IBluetoothGatt$Stub;->leConnectionUpdate(ILjava/lang/String;IIIIIILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1173
    goto/16 :goto_0

    .line 1136
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":Landroid/content/AttributionSource;
    .end local v25    # "_arg9":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1138
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1140
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1142
    .local v8, "_arg2":I
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/AttributionSource;

    .line 1144
    .restart local v9    # "_arg3":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1145
    .local v10, "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1146
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->connectionParameterUpdate(ILjava/lang/String;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1147
    goto/16 :goto_0

    .line 1120
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/content/AttributionSource;
    .end local v10    # "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1122
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1124
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1126
    .restart local v8    # "_arg2":I
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/AttributionSource;

    .line 1128
    .restart local v9    # "_arg3":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1129
    .restart local v10    # "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1130
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->configureMTU(ILjava/lang/String;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1131
    goto/16 :goto_0

    .line 1106
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/content/AttributionSource;
    .end local v10    # "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1108
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1110
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1112
    .local v2, "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1113
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1114
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->readRemoteRssi(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1115
    goto/16 :goto_0

    .line 1090
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1092
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1094
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 1096
    .local v8, "_arg2":Z
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/AttributionSource;

    .line 1098
    .restart local v9    # "_arg3":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1099
    .restart local v10    # "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1100
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->endReliableWrite(ILjava/lang/String;ZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1101
    goto/16 :goto_0

    .line 1076
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Z
    .end local v9    # "_arg3":Landroid/content/AttributionSource;
    .end local v10    # "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1078
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1080
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1082
    .restart local v2    # "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1083
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1084
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->beginReliableWrite(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1085
    goto/16 :goto_0

    .line 1058
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1060
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1062
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1064
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 1066
    .local v10, "_arg3":Z
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/AttributionSource;

    .line 1068
    .local v16, "_arg4":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1069
    .local v17, "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1070
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move v4, v10

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerForNotification(ILjava/lang/String;IZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1071
    goto/16 :goto_0

    .line 1038
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":Z
    .end local v16    # "_arg4":Landroid/content/AttributionSource;
    .end local v17    # "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1040
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1042
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1044
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1046
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 1048
    .local v17, "_arg4":[B
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/AttributionSource;

    .line 1050
    .local v18, "_arg5":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1051
    .local v19, "_arg6":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1052
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v10

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeDescriptor(ILjava/lang/String;II[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1053
    goto/16 :goto_0

    .line 1020
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":[B
    .end local v18    # "_arg5":Landroid/content/AttributionSource;
    .end local v19    # "_arg6":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1022
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1024
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1026
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1028
    .local v10, "_arg3":I
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/AttributionSource;

    .line 1030
    .local v16, "_arg4":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1031
    .local v17, "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1032
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move v4, v10

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->readDescriptor(ILjava/lang/String;IILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1033
    goto/16 :goto_0

    .line 998
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v16    # "_arg4":Landroid/content/AttributionSource;
    .end local v17    # "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1000
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1002
    .local v10, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1004
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1006
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1008
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v19

    .line 1010
    .local v19, "_arg5":[B
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/content/AttributionSource;

    .line 1012
    .local v20, "_arg6":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1013
    .local v21, "_arg7":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1014
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v10

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeCharacteristic(ILjava/lang/String;III[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1015
    goto/16 :goto_0

    .line 976
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":[B
    .end local v20    # "_arg6":Landroid/content/AttributionSource;
    .end local v21    # "_arg7":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 978
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 980
    .restart local v10    # "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/ParcelUuid;

    .line 982
    .local v16, "_arg2":Landroid/os/ParcelUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 984
    .restart local v17    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 986
    .restart local v18    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 988
    .local v19, "_arg5":I
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/content/AttributionSource;

    .line 990
    .restart local v20    # "_arg6":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 991
    .restart local v21    # "_arg7":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 992
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v10

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGatt$Stub;->readUsingCharacteristicUuid(ILjava/lang/String;Landroid/os/ParcelUuid;IIILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 993
    goto/16 :goto_0

    .line 958
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Landroid/os/ParcelUuid;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":Landroid/content/AttributionSource;
    .end local v21    # "_arg7":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 960
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 962
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 964
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 966
    .local v10, "_arg3":I
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/AttributionSource;

    .line 968
    .local v16, "_arg4":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 969
    .local v17, "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 970
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move v4, v10

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->readCharacteristic(ILjava/lang/String;IILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 971
    goto/16 :goto_0

    .line 942
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v16    # "_arg4":Landroid/content/AttributionSource;
    .end local v17    # "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 944
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 946
    .local v7, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/ParcelUuid;

    .line 948
    .local v8, "_arg2":Landroid/os/ParcelUuid;
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/AttributionSource;

    .line 950
    .local v9, "_arg3":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 951
    .local v10, "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 952
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->discoverServiceByUuid(ILjava/lang/String;Landroid/os/ParcelUuid;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 953
    goto/16 :goto_0

    .line 928
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Landroid/os/ParcelUuid;
    .end local v9    # "_arg3":Landroid/content/AttributionSource;
    .end local v10    # "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 930
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 932
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 934
    .restart local v2    # "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 935
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 936
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->discoverServices(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 937
    goto/16 :goto_0

    .line 914
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 916
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 918
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 920
    .restart local v2    # "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 921
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->refreshDevice(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 923
    goto/16 :goto_0

    .line 900
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 902
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 904
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 906
    .restart local v2    # "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 907
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 908
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientReadPhy(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 909
    goto/16 :goto_0

    .line 880
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 882
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 884
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 886
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 888
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 890
    .local v17, "_arg4":I
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/AttributionSource;

    .line 892
    .local v18, "_arg5":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 893
    .local v19, "_arg6":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 894
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v10

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientSetPreferredPhy(ILjava/lang/String;IIILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 895
    goto/16 :goto_0

    .line 866
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Landroid/content/AttributionSource;
    .end local v19    # "_arg6":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 868
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 870
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 872
    .restart local v2    # "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 873
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 874
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientDisconnect(ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 875
    goto/16 :goto_0

    .line 844
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 846
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 848
    .local v10, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 850
    .local v16, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 852
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 854
    .local v18, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 856
    .local v19, "_arg5":I
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/content/AttributionSource;

    .line 858
    .restart local v20    # "_arg6":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 859
    .restart local v21    # "_arg7":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 860
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v10

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientConnect(ILjava/lang/String;ZIZILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 861
    goto/16 :goto_0

    .line 832
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Z
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Z
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":Landroid/content/AttributionSource;
    .end local v21    # "_arg7":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 834
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 836
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 837
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    invoke-virtual {v11, v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterClient(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 839
    goto/16 :goto_0

    .line 816
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_25
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/ParcelUuid;

    .line 818
    .local v6, "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;

    move-result-object v7

    .line 820
    .local v7, "_arg1":Landroid/bluetooth/IBluetoothGattCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 822
    .local v8, "_arg2":Z
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/AttributionSource;

    .line 824
    .local v9, "_arg3":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 825
    .local v10, "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;ZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 827
    goto/16 :goto_0

    .line 798
    .end local v6    # "_arg0":Landroid/os/ParcelUuid;
    .end local v7    # "_arg1":Landroid/bluetooth/IBluetoothGattCallback;
    .end local v8    # "_arg2":Z
    .end local v9    # "_arg3":Landroid/content/AttributionSource;
    .end local v10    # "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_26
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 800
    .local v7, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 802
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 804
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v10

    .line 806
    .local v10, "_arg3":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/AttributionSource;

    .line 808
    .local v16, "_arg4":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 809
    .local v17, "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->transferSetInfo(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 811
    goto/16 :goto_0

    .line 782
    .end local v7    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .end local v16    # "_arg4":Landroid/content/AttributionSource;
    .end local v17    # "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_27
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 784
    .local v6, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 786
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 788
    .local v8, "_arg2":I
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/AttributionSource;

    .line 790
    .local v9, "_arg3":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 791
    .local v10, "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 792
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->transferSync(Landroid/bluetooth/BluetoothDevice;IILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 793
    goto/16 :goto_0

    .line 770
    .end local v6    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/content/AttributionSource;
    .end local v10    # "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v0

    .line 772
    .local v0, "_arg0":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 774
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 775
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 776
    invoke-virtual {v11, v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterSync(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 777
    goto/16 :goto_0

    .line 752
    .end local v0    # "_arg0":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_29
    sget-object v0, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/bluetooth/le/ScanResult;

    .line 754
    .local v7, "_arg0":Landroid/bluetooth/le/ScanResult;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 756
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 758
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v10

    .line 760
    .local v10, "_arg3":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/AttributionSource;

    .line 762
    .restart local v16    # "_arg4":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 763
    .restart local v17    # "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 765
    goto/16 :goto_0

    .line 738
    .end local v7    # "_arg0":Landroid/bluetooth/le/ScanResult;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .end local v16    # "_arg4":Landroid/content/AttributionSource;
    .end local v17    # "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 740
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 742
    .local v1, "_arg1":Z
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 744
    .local v2, "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 745
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->setPeriodicAdvertisingEnable(IZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 747
    goto/16 :goto_0

    .line 724
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 726
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/AdvertiseData;

    .line 728
    .local v1, "_arg1":Landroid/bluetooth/le/AdvertiseData;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 730
    .restart local v2    # "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 731
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 732
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->setPeriodicAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 733
    goto/16 :goto_0

    .line 710
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 712
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    .line 714
    .local v1, "_arg1":Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 716
    .restart local v2    # "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 717
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->setPeriodicAdvertisingParameters(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 719
    goto/16 :goto_0

    .line 696
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 698
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/bluetooth/le/AdvertisingSetParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/AdvertisingSetParameters;

    .line 700
    .local v1, "_arg1":Landroid/bluetooth/le/AdvertisingSetParameters;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 702
    .restart local v2    # "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 703
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->setAdvertisingParameters(ILandroid/bluetooth/le/AdvertisingSetParameters;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 705
    goto/16 :goto_0

    .line 682
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/bluetooth/le/AdvertisingSetParameters;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 684
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/AdvertiseData;

    .line 686
    .local v1, "_arg1":Landroid/bluetooth/le/AdvertiseData;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 688
    .restart local v2    # "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 689
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->setScanResponseData(ILandroid/bluetooth/le/AdvertiseData;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 691
    goto/16 :goto_0

    .line 668
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 670
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/AdvertiseData;

    .line 672
    .restart local v1    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 674
    .restart local v2    # "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 675
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 676
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->setAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 677
    goto/16 :goto_0

    .line 650
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 652
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 654
    .local v8, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 656
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 658
    .local v10, "_arg3":I
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/AttributionSource;

    .line 660
    .restart local v16    # "_arg4":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 661
    .restart local v17    # "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 662
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->enableAdvertisingSet(IZIILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 663
    goto/16 :goto_0

    .line 638
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v16    # "_arg4":Landroid/content/AttributionSource;
    .end local v17    # "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 640
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 642
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 643
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 644
    invoke-virtual {v11, v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->getOwnAddress(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 645
    goto/16 :goto_0

    .line 626
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IAdvertisingSetCallback;

    move-result-object v0

    .line 628
    .local v0, "_arg0":Landroid/bluetooth/le/IAdvertisingSetCallback;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 630
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 631
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    invoke-virtual {v11, v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 633
    goto/16 :goto_0

    .line 600
    .end local v0    # "_arg0":Landroid/bluetooth/le/IAdvertisingSetCallback;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_33
    sget-object v0, Landroid/bluetooth/le/AdvertisingSetParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/bluetooth/le/AdvertisingSetParameters;

    .line 602
    .local v16, "_arg0":Landroid/bluetooth/le/AdvertisingSetParameters;
    sget-object v0, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/bluetooth/le/AdvertiseData;

    .line 604
    .local v17, "_arg1":Landroid/bluetooth/le/AdvertiseData;
    sget-object v0, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/bluetooth/le/AdvertiseData;

    .line 606
    .local v18, "_arg2":Landroid/bluetooth/le/AdvertiseData;
    sget-object v0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    .line 608
    .local v19, "_arg3":Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    sget-object v0, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/bluetooth/le/AdvertiseData;

    .line 610
    .local v20, "_arg4":Landroid/bluetooth/le/AdvertiseData;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 612
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 614
    .restart local v22    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IAdvertisingSetCallback;

    move-result-object v23

    .line 616
    .local v23, "_arg7":Landroid/bluetooth/le/IAdvertisingSetCallback;
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/content/AttributionSource;

    .line 618
    .restart local v24    # "_arg8":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 619
    .restart local v25    # "_arg9":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Landroid/bluetooth/IBluetoothGatt$Stub;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/IAdvertisingSetCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 621
    goto/16 :goto_0

    .line 588
    .end local v16    # "_arg0":Landroid/bluetooth/le/AdvertisingSetParameters;
    .end local v17    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    .end local v18    # "_arg2":Landroid/bluetooth/le/AdvertiseData;
    .end local v19    # "_arg3":Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .end local v20    # "_arg4":Landroid/bluetooth/le/AdvertiseData;
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":Landroid/bluetooth/le/IAdvertisingSetCallback;
    .end local v24    # "_arg8":Landroid/content/AttributionSource;
    .end local v25    # "_arg9":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 590
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 592
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 593
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    invoke-virtual {v11, v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->flushPendingBatchResults(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 595
    goto/16 :goto_0

    .line 576
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 578
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 580
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 581
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {v11, v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopScan(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 583
    goto/16 :goto_0

    .line 564
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_36
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 566
    .local v0, "_arg0":Landroid/app/PendingIntent;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 568
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 569
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {v11, v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopScanForIntent(Landroid/app/PendingIntent;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 571
    goto/16 :goto_0

    .line 548
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_37
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/PendingIntent;

    .line 550
    .local v6, "_arg0":Landroid/app/PendingIntent;
    sget-object v0, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/bluetooth/le/ScanSettings;

    .line 552
    .local v7, "_arg1":Landroid/bluetooth/le/ScanSettings;
    sget-object v0, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    .line 554
    .local v8, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/AttributionSource;

    .line 556
    .local v9, "_arg3":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 557
    .local v10, "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->startScanForIntent(Landroid/app/PendingIntent;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 559
    goto/16 :goto_0

    .line 532
    .end local v6    # "_arg0":Landroid/app/PendingIntent;
    .end local v7    # "_arg1":Landroid/bluetooth/le/ScanSettings;
    .end local v8    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local v9    # "_arg3":Landroid/content/AttributionSource;
    .end local v10    # "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 534
    .local v6, "_arg0":I
    sget-object v0, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/bluetooth/le/ScanSettings;

    .line 536
    .restart local v7    # "_arg1":Landroid/bluetooth/le/ScanSettings;
    sget-object v0, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    .line 538
    .restart local v8    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/AttributionSource;

    .line 540
    .restart local v9    # "_arg3":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 541
    .restart local v10    # "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->startScan(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 543
    goto :goto_0

    .line 520
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/bluetooth/le/ScanSettings;
    .end local v8    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local v9    # "_arg3":Landroid/content/AttributionSource;
    .end local v10    # "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 522
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 524
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 525
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    invoke-virtual {v11, v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterScanner(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 527
    goto :goto_0

    .line 506
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/le/IScannerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IScannerCallback;

    move-result-object v0

    .line 508
    .local v0, "_arg0":Landroid/bluetooth/le/IScannerCallback;
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 510
    .local v1, "_arg1":Landroid/os/WorkSource;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 512
    .local v2, "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 513
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerScanner(Landroid/bluetooth/le/IScannerCallback;Landroid/os/WorkSource;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 515
    goto :goto_0

    .line 494
    .end local v0    # "_arg0":Landroid/bluetooth/le/IScannerCallback;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 496
    .local v0, "_arg0":[I
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 498
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 499
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {v11, v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 501
    nop

    .line 1422
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :goto_0
    return v15

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
