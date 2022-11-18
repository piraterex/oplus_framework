.class public abstract Landroid/bluetooth/IBluetoothHidDevice$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHidDevice.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHidDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHidDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHidDevice"

.field static final blacklist TRANSACTION_connect:I = 0x7

.field static final blacklist TRANSACTION_disconnect:I = 0x8

.field static final blacklist TRANSACTION_getConnectedDevices:I = 0x9

.field static final blacklist TRANSACTION_getConnectionState:I = 0xb

.field static final blacklist TRANSACTION_getDevicesMatchingConnectionStates:I = 0xa

.field static final blacklist TRANSACTION_getUserAppName:I = 0xc

.field static final blacklist TRANSACTION_registerApp:I = 0x1

.field static final blacklist TRANSACTION_replyReport:I = 0x4

.field static final blacklist TRANSACTION_reportError:I = 0x5

.field static final blacklist TRANSACTION_sendReport:I = 0x3

.field static final blacklist TRANSACTION_setConnectionPolicy:I = 0xd

.field static final blacklist TRANSACTION_unplug:I = 0x6

.field static final blacklist TRANSACTION_unregisterApp:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidDevice;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_0

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHidDevice;

    if-eqz v1, :cond_1

    .line 74
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothHidDevice;

    return-object v1

    .line 76
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothHidDevice$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHidDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 85
    packed-switch p0, :pswitch_data_0

    .line 141
    const/4 v0, 0x0

    return-object v0

    .line 137
    :pswitch_0
    const-string/jumbo v0, "setConnectionPolicy"

    return-object v0

    .line 133
    :pswitch_1
    const-string v0, "getUserAppName"

    return-object v0

    .line 129
    :pswitch_2
    const-string v0, "getConnectionState"

    return-object v0

    .line 125
    :pswitch_3
    const-string v0, "getDevicesMatchingConnectionStates"

    return-object v0

    .line 121
    :pswitch_4
    const-string v0, "getConnectedDevices"

    return-object v0

    .line 117
    :pswitch_5
    const-string v0, "disconnect"

    return-object v0

    .line 113
    :pswitch_6
    const-string v0, "connect"

    return-object v0

    .line 109
    :pswitch_7
    const-string/jumbo v0, "unplug"

    return-object v0

    .line 105
    :pswitch_8
    const-string/jumbo v0, "reportError"

    return-object v0

    .line 101
    :pswitch_9
    const-string/jumbo v0, "replyReport"

    return-object v0

    .line 97
    :pswitch_a
    const-string/jumbo v0, "sendReport"

    return-object v0

    .line 93
    :pswitch_b
    const-string/jumbo v0, "unregisterApp"

    return-object v0

    .line 89
    :pswitch_c
    const-string/jumbo v0, "registerApp"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 565
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 148
    invoke-static {p1}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 152
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "android.bluetooth.IBluetoothHidDevice"

    .line 153
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 154
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 164
    move-object/from16 v12, p3

    packed-switch v8, :pswitch_data_1

    .line 338
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 160
    :pswitch_0
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    return v11

    .line 325
    :pswitch_1
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 327
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 329
    .local v1, "_arg1":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 331
    .local v2, "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 332
    .local v3, "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 334
    goto/16 :goto_0

    .line 315
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_2
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 317
    .local v0, "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 318
    .local v1, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->getUserAppName(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 320
    goto/16 :goto_0

    .line 303
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_3
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 305
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 307
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 308
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 310
    goto/16 :goto_0

    .line 291
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 293
    .local v0, "_arg0":[I
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 295
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 296
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 298
    goto/16 :goto_0

    .line 281
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_5
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 283
    .local v0, "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 284
    .local v1, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->getConnectedDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 286
    goto/16 :goto_0

    .line 269
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_6
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 271
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 273
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 274
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 276
    goto/16 :goto_0

    .line 257
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_7
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 259
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 261
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 262
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 264
    goto/16 :goto_0

    .line 245
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_8
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 247
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 249
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 250
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->unplug(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 252
    goto/16 :goto_0

    .line 231
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_9
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 233
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 235
    .local v1, "_arg1":B
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 237
    .local v2, "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 238
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->reportError(Landroid/bluetooth/BluetoothDevice;BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 240
    goto/16 :goto_0

    .line 213
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":B
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_a
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    .line 215
    .local v13, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v14

    .line 217
    .local v14, "_arg1":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v15

    .line 219
    .local v15, "_arg2":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 221
    .local v16, "_arg3":[B
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/AttributionSource;

    .line 223
    .local v17, "_arg4":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 224
    .local v18, "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 226
    goto/16 :goto_0

    .line 197
    .end local v13    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v14    # "_arg1":B
    .end local v15    # "_arg2":B
    .end local v16    # "_arg3":[B
    .end local v17    # "_arg4":Landroid/content/AttributionSource;
    .end local v18    # "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_b
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 199
    .local v6, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 201
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 203
    .local v14, "_arg2":[B
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/AttributionSource;

    .line 205
    .local v15, "_arg3":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 206
    .local v16, "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->sendReport(Landroid/bluetooth/BluetoothDevice;I[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 208
    goto :goto_0

    .line 187
    .end local v6    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":[B
    .end local v15    # "_arg3":Landroid/content/AttributionSource;
    .end local v16    # "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_c
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 189
    .local v0, "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 190
    .local v1, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->unregisterApp(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 192
    goto :goto_0

    .line 169
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_d
    sget-object v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    .line 171
    .local v13, "_arg0":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    sget-object v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    .line 173
    .local v14, "_arg1":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    sget-object v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    .line 175
    .local v15, "_arg2":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v16

    .line 177
    .local v16, "_arg3":Landroid/bluetooth/IBluetoothHidDeviceCallback;
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/AttributionSource;

    .line 179
    .restart local v17    # "_arg4":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 180
    .restart local v18    # "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/IBluetoothHidDeviceCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 182
    nop

    .line 341
    .end local v13    # "_arg0":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .end local v14    # "_arg1":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .end local v15    # "_arg2":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .end local v16    # "_arg3":Landroid/bluetooth/IBluetoothHidDeviceCallback;
    .end local v17    # "_arg4":Landroid/content/AttributionSource;
    .end local v18    # "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    :goto_0
    return v11

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
