.class public abstract Landroid/bluetooth/IBluetoothGattServerCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGattServerCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattServerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGattServerCallback"

.field static final blacklist TRANSACTION_onCharacteristicReadRequest:I = 0x4

.field static final blacklist TRANSACTION_onCharacteristicWriteRequest:I = 0x6

.field static final blacklist TRANSACTION_onConnectionUpdated:I = 0xd

.field static final blacklist TRANSACTION_onDescriptorReadRequest:I = 0x5

.field static final blacklist TRANSACTION_onDescriptorWriteRequest:I = 0x7

.field static final blacklist TRANSACTION_onExecuteWrite:I = 0x8

.field static final blacklist TRANSACTION_onMtuChanged:I = 0xa

.field static final blacklist TRANSACTION_onNotificationSent:I = 0x9

.field static final blacklist TRANSACTION_onPhyRead:I = 0xc

.field static final blacklist TRANSACTION_onPhyUpdate:I = 0xb

.field static final blacklist TRANSACTION_onServerConnectionState:I = 0x2

.field static final blacklist TRANSACTION_onServerRegistered:I = 0x1

.field static final blacklist TRANSACTION_onServiceAdded:I = 0x3

.field static final blacklist TRANSACTION_onSubrateChange:I = 0xe


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattServerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 75
    if-nez p0, :cond_0

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGattServerCallback;

    if-eqz v1, :cond_1

    .line 80
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothGattServerCallback;

    return-object v1

    .line 82
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 91
    packed-switch p0, :pswitch_data_0

    .line 151
    const/4 v0, 0x0

    return-object v0

    .line 147
    :pswitch_0
    const-string/jumbo v0, "onSubrateChange"

    return-object v0

    .line 143
    :pswitch_1
    const-string/jumbo v0, "onConnectionUpdated"

    return-object v0

    .line 139
    :pswitch_2
    const-string/jumbo v0, "onPhyRead"

    return-object v0

    .line 135
    :pswitch_3
    const-string/jumbo v0, "onPhyUpdate"

    return-object v0

    .line 131
    :pswitch_4
    const-string/jumbo v0, "onMtuChanged"

    return-object v0

    .line 127
    :pswitch_5
    const-string/jumbo v0, "onNotificationSent"

    return-object v0

    .line 123
    :pswitch_6
    const-string/jumbo v0, "onExecuteWrite"

    return-object v0

    .line 119
    :pswitch_7
    const-string/jumbo v0, "onDescriptorWriteRequest"

    return-object v0

    .line 115
    :pswitch_8
    const-string/jumbo v0, "onCharacteristicWriteRequest"

    return-object v0

    .line 111
    :pswitch_9
    const-string/jumbo v0, "onDescriptorReadRequest"

    return-object v0

    .line 107
    :pswitch_a
    const-string/jumbo v0, "onCharacteristicReadRequest"

    return-object v0

    .line 103
    :pswitch_b
    const-string/jumbo v0, "onServiceAdded"

    return-object v0

    .line 99
    :pswitch_c
    const-string/jumbo v0, "onServerConnectionState"

    return-object v0

    .line 95
    :pswitch_d
    const-string/jumbo v0, "onServerRegistered"

    return-object v0

    nop

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 86
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 635
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 158
    invoke-static {p1}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    const-string v12, "android.bluetooth.IBluetoothGattServerCallback"

    .line 163
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v10, v13, :cond_0

    const v0, 0xffffff

    if-gt v10, v0, :cond_0

    .line 164
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    :cond_0
    packed-switch v10, :pswitch_data_0

    .line 174
    move-object/from16 v14, p3

    packed-switch v10, :pswitch_data_1

    .line 382
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 170
    :pswitch_0
    move-object/from16 v14, p3

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    return v13

    .line 365
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 367
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 369
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 371
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 373
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 375
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 376
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onSubrateChange(Ljava/lang/String;IIIII)V

    .line 378
    goto/16 :goto_0

    .line 349
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 351
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 353
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 355
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 357
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 358
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onConnectionUpdated(Ljava/lang/String;IIII)V

    .line 360
    goto/16 :goto_0

    .line 335
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 339
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 341
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 342
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onPhyRead(Ljava/lang/String;III)V

    .line 344
    goto/16 :goto_0

    .line 321
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 323
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 325
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 327
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 328
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onPhyUpdate(Ljava/lang/String;III)V

    .line 330
    goto/16 :goto_0

    .line 311
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 313
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 314
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onMtuChanged(Ljava/lang/String;I)V

    .line 316
    goto/16 :goto_0

    .line 301
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 304
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onNotificationSent(Ljava/lang/String;I)V

    .line 306
    goto/16 :goto_0

    .line 289
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 293
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 294
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {v9, v0, v1, v2}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onExecuteWrite(Ljava/lang/String;IZ)V

    .line 296
    goto/16 :goto_0

    .line 267
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 269
    .local v15, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 271
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 273
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 275
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 277
    .local v19, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 279
    .local v20, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 281
    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .line 282
    .local v22, "_arg7":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onDescriptorWriteRequest(Ljava/lang/String;IIIZZI[B)V

    .line 284
    goto/16 :goto_0

    .line 245
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Z
    .end local v20    # "_arg5":Z
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":[B
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 247
    .restart local v15    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 249
    .restart local v16    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 251
    .restart local v17    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 253
    .restart local v18    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 255
    .restart local v19    # "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 257
    .restart local v20    # "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 259
    .restart local v21    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .line 260
    .restart local v22    # "_arg7":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onCharacteristicWriteRequest(Ljava/lang/String;IIIZZI[B)V

    .line 262
    goto/16 :goto_0

    .line 229
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Z
    .end local v20    # "_arg5":Z
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":[B
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 231
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 233
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 235
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 237
    .local v15, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 238
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onDescriptorReadRequest(Ljava/lang/String;IIZI)V

    .line 240
    goto :goto_0

    .line 213
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":Z
    .end local v16    # "_arg4":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 215
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 217
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 219
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 221
    .restart local v15    # "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 222
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onCharacteristicReadRequest(Ljava/lang/String;IIZI)V

    .line 224
    goto :goto_0

    .line 203
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":Z
    .end local v16    # "_arg4":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 205
    .local v0, "_arg0":I
    sget-object v1, Landroid/bluetooth/BluetoothGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 206
    .local v1, "_arg1":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V

    .line 208
    goto :goto_0

    .line 189
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothGattService;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 191
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 195
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onServerConnectionState(IIZLjava/lang/String;)V

    .line 198
    goto :goto_0

    .line 179
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 181
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 182
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onServerRegistered(II)V

    .line 184
    nop

    .line 385
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :goto_0
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
