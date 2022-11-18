.class public abstract Landroid/bluetooth/IBluetoothHidHost$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHidHost.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHidHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHidHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHidHost"

.field static final blacklist TRANSACTION_connect:I = 0x1

.field static final blacklist TRANSACTION_disconnect:I = 0x2

.field static final blacklist TRANSACTION_getConnectedDevices:I = 0x3

.field static final blacklist TRANSACTION_getConnectionPolicy:I = 0x7

.field static final blacklist TRANSACTION_getConnectionState:I = 0x5

.field static final blacklist TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4

.field static final blacklist TRANSACTION_getIdleTime:I = 0xe

.field static final blacklist TRANSACTION_getProtocolMode:I = 0x8

.field static final blacklist TRANSACTION_getReport:I = 0xb

.field static final blacklist TRANSACTION_sendData:I = 0xd

.field static final blacklist TRANSACTION_setConnectionPolicy:I = 0x6

.field static final blacklist TRANSACTION_setIdleTime:I = 0xf

.field static final blacklist TRANSACTION_setProtocolMode:I = 0xa

.field static final blacklist TRANSACTION_setReport:I = 0xc

.field static final blacklist TRANSACTION_virtualUnplug:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 72
    const-string v0, "android.bluetooth.IBluetoothHidHost"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHidHost$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidHost;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 80
    if-nez p0, :cond_0

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothHidHost"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHidHost;

    if-eqz v1, :cond_1

    .line 85
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothHidHost;

    return-object v1

    .line 87
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 96
    packed-switch p0, :pswitch_data_0

    .line 160
    const/4 v0, 0x0

    return-object v0

    .line 156
    :pswitch_0
    const-string/jumbo v0, "setIdleTime"

    return-object v0

    .line 152
    :pswitch_1
    const-string v0, "getIdleTime"

    return-object v0

    .line 148
    :pswitch_2
    const-string/jumbo v0, "sendData"

    return-object v0

    .line 144
    :pswitch_3
    const-string/jumbo v0, "setReport"

    return-object v0

    .line 140
    :pswitch_4
    const-string v0, "getReport"

    return-object v0

    .line 136
    :pswitch_5
    const-string/jumbo v0, "setProtocolMode"

    return-object v0

    .line 132
    :pswitch_6
    const-string/jumbo v0, "virtualUnplug"

    return-object v0

    .line 128
    :pswitch_7
    const-string v0, "getProtocolMode"

    return-object v0

    .line 124
    :pswitch_8
    const-string v0, "getConnectionPolicy"

    return-object v0

    .line 120
    :pswitch_9
    const-string/jumbo v0, "setConnectionPolicy"

    return-object v0

    .line 116
    :pswitch_a
    const-string v0, "getConnectionState"

    return-object v0

    .line 112
    :pswitch_b
    const-string v0, "getDevicesMatchingConnectionStates"

    return-object v0

    .line 108
    :pswitch_c
    const-string v0, "getConnectedDevices"

    return-object v0

    .line 104
    :pswitch_d
    const-string v0, "disconnect"

    return-object v0

    .line 100
    :pswitch_e
    const-string v0, "connect"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 91
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 642
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 167
    invoke-static {p1}, Landroid/bluetooth/IBluetoothHidHost$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 171
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "android.bluetooth.IBluetoothHidHost"

    .line 172
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 173
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 183
    move-object/from16 v12, p3

    packed-switch v8, :pswitch_data_1

    .line 383
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 179
    :pswitch_0
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    return v11

    .line 370
    :pswitch_1
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 372
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 374
    .local v1, "_arg1":B
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 376
    .local v2, "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 377
    .local v3, "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothHidHost$Stub;->setIdleTime(Landroid/bluetooth/BluetoothDevice;BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 379
    goto/16 :goto_0

    .line 358
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":B
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_2
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 360
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 362
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 363
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetoothHidHost$Stub;->getIdleTime(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 365
    goto/16 :goto_0

    .line 344
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_3
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 346
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 350
    .local v2, "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 351
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothHidHost$Stub;->sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 353
    goto/16 :goto_0

    .line 328
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_4
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 330
    .local v6, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v13

    .line 332
    .local v13, "_arg1":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 334
    .local v14, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/AttributionSource;

    .line 336
    .local v15, "_arg3":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 337
    .local v16, "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothHidHost$Stub;->setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 339
    goto/16 :goto_0

    .line 310
    .end local v6    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v13    # "_arg1":B
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Landroid/content/AttributionSource;
    .end local v16    # "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_5
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    .line 312
    .local v13, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v14

    .line 314
    .local v14, "_arg1":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v15

    .line 316
    .local v15, "_arg2":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 318
    .local v16, "_arg3":I
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/AttributionSource;

    .line 320
    .local v17, "_arg4":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 321
    .local v18, "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothHidHost$Stub;->getReport(Landroid/bluetooth/BluetoothDevice;BBILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 323
    goto/16 :goto_0

    .line 296
    .end local v13    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v14    # "_arg1":B
    .end local v15    # "_arg2":B
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Landroid/content/AttributionSource;
    .end local v18    # "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_6
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 298
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 300
    .local v1, "_arg1":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 302
    .restart local v2    # "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 303
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothHidHost$Stub;->setProtocolMode(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 305
    goto/16 :goto_0

    .line 284
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_7
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 286
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 288
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 289
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetoothHidHost$Stub;->virtualUnplug(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 291
    goto/16 :goto_0

    .line 272
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_8
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 274
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 276
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 277
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetoothHidHost$Stub;->getProtocolMode(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 279
    goto/16 :goto_0

    .line 260
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_9
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 262
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 264
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 265
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetoothHidHost$Stub;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 267
    goto/16 :goto_0

    .line 246
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_a
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 248
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 250
    .local v1, "_arg1":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 252
    .local v2, "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 253
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothHidHost$Stub;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 255
    goto/16 :goto_0

    .line 234
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_b
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 236
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 238
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 239
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetoothHidHost$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 241
    goto :goto_0

    .line 222
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 224
    .local v0, "_arg0":[I
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 226
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 227
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetoothHidHost$Stub;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 229
    goto :goto_0

    .line 212
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_d
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 214
    .local v0, "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 215
    .local v1, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetoothHidHost$Stub;->getConnectedDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 217
    goto :goto_0

    .line 200
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_e
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 202
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 204
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 205
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetoothHidHost$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 207
    goto :goto_0

    .line 188
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_f
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 190
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 192
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 193
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetoothHidHost$Stub;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 195
    nop

    .line 386
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :goto_0
    return v11

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
