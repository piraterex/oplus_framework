.class public abstract Landroid/bluetooth/IBluetoothDeviceGroup$Stub;
.super Landroid/os/Binder;
.source "IBluetoothDeviceGroup.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothDeviceGroup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothDeviceGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothDeviceGroup$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_connect:I = 0x1

.field static final blacklist TRANSACTION_disconnect:I = 0x2

.field static final blacklist TRANSACTION_getDeviceGroup:I = 0x8

.field static final blacklist TRANSACTION_getDiscoveredGroups:I = 0x7

.field static final blacklist TRANSACTION_getExclusiveAccessStatus:I = 0xc

.field static final blacklist TRANSACTION_getRemoteDeviceGroupId:I = 0x9

.field static final blacklist TRANSACTION_isGroupDiscoveryInProgress:I = 0xa

.field static final blacklist TRANSACTION_registerGroupClientApp:I = 0x3

.field static final blacklist TRANSACTION_setExclusiveAccess:I = 0xb

.field static final blacklist TRANSACTION_startGroupDiscovery:I = 0x5

.field static final blacklist TRANSACTION_stopGroupDiscovery:I = 0x6

.field static final blacklist TRANSACTION_unregisterGroupClientApp:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "android.bluetooth.IBluetoothDeviceGroup"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothDeviceGroup$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothDeviceGroup;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothDeviceGroup"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothDeviceGroup;

    if-eqz v1, :cond_1

    .line 78
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothDeviceGroup;

    return-object v1

    .line 80
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothDeviceGroup$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothDeviceGroup$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 89
    packed-switch p0, :pswitch_data_0

    .line 141
    const/4 v0, 0x0

    return-object v0

    .line 137
    :pswitch_0
    const-string v0, "getExclusiveAccessStatus"

    return-object v0

    .line 133
    :pswitch_1
    const-string/jumbo v0, "setExclusiveAccess"

    return-object v0

    .line 129
    :pswitch_2
    const-string v0, "isGroupDiscoveryInProgress"

    return-object v0

    .line 125
    :pswitch_3
    const-string v0, "getRemoteDeviceGroupId"

    return-object v0

    .line 121
    :pswitch_4
    const-string v0, "getDeviceGroup"

    return-object v0

    .line 117
    :pswitch_5
    const-string v0, "getDiscoveredGroups"

    return-object v0

    .line 113
    :pswitch_6
    const-string/jumbo v0, "stopGroupDiscovery"

    return-object v0

    .line 109
    :pswitch_7
    const-string/jumbo v0, "startGroupDiscovery"

    return-object v0

    .line 105
    :pswitch_8
    const-string/jumbo v0, "unregisterGroupClientApp"

    return-object v0

    .line 101
    :pswitch_9
    const-string/jumbo v0, "registerGroupClientApp"

    return-object v0

    .line 97
    :pswitch_a
    const-string v0, "disconnect"

    return-object v0

    .line 93
    :pswitch_b
    const-string v0, "connect"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 84
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 583
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 148
    invoke-static {p1}, Landroid/bluetooth/IBluetoothDeviceGroup$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
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
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.bluetooth.IBluetoothDeviceGroup"

    .line 153
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 154
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 164
    packed-switch v7, :pswitch_data_1

    .line 330
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 160
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    return v11

    .line 316
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 318
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 320
    .local v1, "_arg1":I
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 322
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 323
    .local v3, "_arg3":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothDeviceGroup$Stub;->getExclusiveAccessStatus(IILjava/util/List;Landroid/content/AttributionSource;)V

    .line 325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    goto/16 :goto_0

    .line 299
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v3    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 301
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 303
    .local v13, "_arg1":I
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .line 305
    .local v14, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 307
    .local v15, "_arg3":I
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/AttributionSource;

    .line 308
    .local v16, "_arg4":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothDeviceGroup$Stub;->setExclusiveAccess(IILjava/util/List;ILandroid/content/AttributionSource;)V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    goto/16 :goto_0

    .line 287
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Landroid/content/AttributionSource;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 289
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 290
    .local v1, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {v6, v0, v1}, Landroid/bluetooth/IBluetoothDeviceGroup$Stub;->isGroupDiscoveryInProgress(ILandroid/content/AttributionSource;)Z

    move-result v2

    .line 292
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 294
    goto/16 :goto_0

    .line 271
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_result":Z
    :pswitch_4
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 273
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 275
    .local v1, "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 277
    .local v2, "_arg2":Z
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 278
    .restart local v3    # "_arg3":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothDeviceGroup$Stub;->getRemoteDeviceGroupId(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;ZLandroid/content/AttributionSource;)I

    move-result v4

    .line 280
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    goto/16 :goto_0

    .line 257
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Landroid/content/AttributionSource;
    .end local v4    # "_result":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 259
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 261
    .local v1, "_arg1":Z
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 262
    .local v2, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {v6, v0, v1, v2}, Landroid/bluetooth/IBluetoothDeviceGroup$Stub;->getDeviceGroup(IZLandroid/content/AttributionSource;)Landroid/bluetooth/DeviceGroup;

    move-result-object v3

    .line 264
    .local v3, "_result":Landroid/bluetooth/DeviceGroup;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 266
    goto/16 :goto_0

    .line 245
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_result":Landroid/bluetooth/DeviceGroup;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 247
    .local v0, "_arg0":Z
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 248
    .local v1, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {v6, v0, v1}, Landroid/bluetooth/IBluetoothDeviceGroup$Stub;->getDiscoveredGroups(ZLandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v2

    .line 250
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/DeviceGroup;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 252
    goto/16 :goto_0

    .line 232
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/DeviceGroup;>;"
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 234
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 236
    .local v1, "_arg1":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 237
    .local v2, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {v6, v0, v1, v2}, Landroid/bluetooth/IBluetoothDeviceGroup$Stub;->stopGroupDiscovery(IILandroid/content/AttributionSource;)V

    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    goto/16 :goto_0

    .line 219
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 221
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 223
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 224
    .restart local v2    # "_arg2":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {v6, v0, v1, v2}, Landroid/bluetooth/IBluetoothDeviceGroup$Stub;->startGroupDiscovery(IILandroid/content/AttributionSource;)V

    .line 226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    goto :goto_0

    .line 208
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 210
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 211
    .local v1, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {v6, v0, v1}, Landroid/bluetooth/IBluetoothDeviceGroup$Stub;->unregisterGroupClientApp(ILandroid/content/AttributionSource;)V

    .line 213
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    goto :goto_0

    .line 195
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_a
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 197
    .local v0, "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothGroupCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGroupCallback;

    move-result-object v1

    .line 199
    .local v1, "_arg1":Landroid/bluetooth/IBluetoothGroupCallback;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 200
    .restart local v2    # "_arg2":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {v6, v0, v1, v2}, Landroid/bluetooth/IBluetoothDeviceGroup$Stub;->registerGroupClientApp(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGroupCallback;Landroid/content/AttributionSource;)V

    .line 202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    goto :goto_0

    .line 182
    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    .end local v1    # "_arg1":Landroid/bluetooth/IBluetoothGroupCallback;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 184
    .local v0, "_arg0":I
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 186
    .local v1, "_arg1":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 187
    .restart local v2    # "_arg2":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {v6, v0, v1, v2}, Landroid/bluetooth/IBluetoothDeviceGroup$Stub;->disconnect(ILandroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V

    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    goto :goto_0

    .line 169
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 171
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 173
    .restart local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 174
    .restart local v2    # "_arg2":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {v6, v0, v1, v2}, Landroid/bluetooth/IBluetoothDeviceGroup$Stub;->connect(ILandroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V

    .line 176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    nop

    .line 333
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    :goto_0
    return v11

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
