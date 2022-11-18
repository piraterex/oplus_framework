.class public abstract Landroid/bluetooth/IBluetoothGattCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGattCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGattCallback"

.field static final blacklist TRANSACTION_onCharacteristicRead:I = 0x6

.field static final blacklist TRANSACTION_onCharacteristicWrite:I = 0x7

.field static final blacklist TRANSACTION_onClientConnectionState:I = 0x2

.field static final blacklist TRANSACTION_onClientRegistered:I = 0x1

.field static final blacklist TRANSACTION_onConfigureMTU:I = 0xd

.field static final blacklist TRANSACTION_onConnectionUpdated:I = 0xe

.field static final blacklist TRANSACTION_onDescriptorRead:I = 0x9

.field static final blacklist TRANSACTION_onDescriptorWrite:I = 0xa

.field static final blacklist TRANSACTION_onExecuteWrite:I = 0x8

.field static final blacklist TRANSACTION_onNotify:I = 0xb

.field static final blacklist TRANSACTION_onPhyRead:I = 0x4

.field static final blacklist TRANSACTION_onPhyUpdate:I = 0x3

.field static final blacklist TRANSACTION_onReadRemoteRssi:I = 0xc

.field static final blacklist TRANSACTION_onSearchComplete:I = 0x5

.field static final blacklist TRANSACTION_onServiceChanged:I = 0xf

.field static final blacklist TRANSACTION_onSubrateChange:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 81
    if-nez p0, :cond_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 85
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGattCallback;

    if-eqz v1, :cond_1

    .line 86
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    return-object v1

    .line 88
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 97
    packed-switch p0, :pswitch_data_0

    .line 165
    const/4 v0, 0x0

    return-object v0

    .line 161
    :pswitch_0
    const-string/jumbo v0, "onSubrateChange"

    return-object v0

    .line 157
    :pswitch_1
    const-string/jumbo v0, "onServiceChanged"

    return-object v0

    .line 153
    :pswitch_2
    const-string/jumbo v0, "onConnectionUpdated"

    return-object v0

    .line 149
    :pswitch_3
    const-string/jumbo v0, "onConfigureMTU"

    return-object v0

    .line 145
    :pswitch_4
    const-string/jumbo v0, "onReadRemoteRssi"

    return-object v0

    .line 141
    :pswitch_5
    const-string/jumbo v0, "onNotify"

    return-object v0

    .line 137
    :pswitch_6
    const-string/jumbo v0, "onDescriptorWrite"

    return-object v0

    .line 133
    :pswitch_7
    const-string/jumbo v0, "onDescriptorRead"

    return-object v0

    .line 129
    :pswitch_8
    const-string/jumbo v0, "onExecuteWrite"

    return-object v0

    .line 125
    :pswitch_9
    const-string/jumbo v0, "onCharacteristicWrite"

    return-object v0

    .line 121
    :pswitch_a
    const-string/jumbo v0, "onCharacteristicRead"

    return-object v0

    .line 117
    :pswitch_b
    const-string/jumbo v0, "onSearchComplete"

    return-object v0

    .line 113
    :pswitch_c
    const-string/jumbo v0, "onPhyRead"

    return-object v0

    .line 109
    :pswitch_d
    const-string/jumbo v0, "onPhyUpdate"

    return-object v0

    .line 105
    :pswitch_e
    const-string/jumbo v0, "onClientConnectionState"

    return-object v0

    .line 101
    :pswitch_f
    const-string/jumbo v0, "onClientRegistered"

    return-object v0

    nop

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 92
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 673
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 172
    invoke-static {p1}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 176
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "android.bluetooth.IBluetoothGattCallback"

    .line 177
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 178
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 188
    move-object/from16 v12, p3

    packed-switch v8, :pswitch_data_1

    .line 400
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 184
    :pswitch_0
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    return v11

    .line 383
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 385
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 387
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 389
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 391
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 393
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 394
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onSubrateChange(Ljava/lang/String;IIIII)V

    .line 396
    goto/16 :goto_0

    .line 375
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {v7, v0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onServiceChanged(Ljava/lang/String;)V

    .line 378
    goto/16 :goto_0

    .line 359
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 361
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 363
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 365
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 367
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 368
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onConnectionUpdated(Ljava/lang/String;IIII)V

    .line 370
    goto/16 :goto_0

    .line 347
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 349
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 351
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 352
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onConfigureMTU(Ljava/lang/String;II)V

    .line 354
    goto/16 :goto_0

    .line 335
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 337
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 339
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 340
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onReadRemoteRssi(Ljava/lang/String;II)V

    .line 342
    goto/16 :goto_0

    .line 323
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 325
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 327
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 328
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onNotify(Ljava/lang/String;I[B)V

    .line 330
    goto/16 :goto_0

    .line 309
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 311
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 313
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 315
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 316
    .local v3, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onDescriptorWrite(Ljava/lang/String;II[B)V

    .line 318
    goto/16 :goto_0

    .line 295
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":[B
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 299
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 302
    .restart local v3    # "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onDescriptorRead(Ljava/lang/String;II[B)V

    .line 304
    goto/16 :goto_0

    .line 285
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":[B
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 287
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 288
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onExecuteWrite(Ljava/lang/String;I)V

    .line 290
    goto/16 :goto_0

    .line 271
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 273
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 275
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 277
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 278
    .restart local v3    # "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onCharacteristicWrite(Ljava/lang/String;II[B)V

    .line 280
    goto/16 :goto_0

    .line 257
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":[B
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 261
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 263
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 264
    .restart local v3    # "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onCharacteristicRead(Ljava/lang/String;II[B)V

    .line 266
    goto :goto_0

    .line 245
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":[B
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 247
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 249
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 250
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onSearchComplete(Ljava/lang/String;Ljava/util/List;I)V

    .line 252
    goto :goto_0

    .line 231
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .end local v2    # "_arg2":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 233
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 235
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 237
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 238
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onPhyRead(Ljava/lang/String;III)V

    .line 240
    goto :goto_0

    .line 217
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 221
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 223
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 224
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onPhyUpdate(Ljava/lang/String;III)V

    .line 226
    goto :goto_0

    .line 203
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 205
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 207
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 209
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onClientConnectionState(IIZLjava/lang/String;)V

    .line 212
    goto :goto_0

    .line 193
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 195
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 196
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onClientRegistered(II)V

    .line 198
    nop

    .line 403
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :goto_0
    return v11

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
