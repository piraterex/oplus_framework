.class Landroid/bluetooth/BluetoothLeBroadcastReceiveState$1;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastReceiveState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcastReceiveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothLeBroadcastReceiveState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeBroadcastReceiveState;
    .locals 26
    .param p1, "in"    # Landroid/os/Parcel;

    .line 457
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 458
    .local v13, "sourceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 459
    .local v14, "sourceAddressType":I
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 460
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/bluetooth/BluetoothDevice;

    .line 461
    .local v15, "sourceDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 462
    .local v16, "sourceAdvertisingSid":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 463
    .local v17, "broadcastId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 464
    .local v18, "paSyncState":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 465
    .local v19, "bigEncryptionState":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 466
    .local v12, "badCodeLen":I
    const/4 v1, 0x0

    .line 468
    .local v1, "badCode":[B
    const/4 v2, -0x1

    if-eq v12, v2, :cond_1

    .line 469
    new-array v1, v12, [B

    .line 470
    if-lez v12, :cond_0

    .line 471
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 474
    :cond_0
    move-object/from16 v20, v1

    goto :goto_0

    .line 468
    :cond_1
    move-object/from16 v20, v1

    .line 474
    .end local v1    # "badCode":[B
    .local v20, "badCode":[B
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v21

    .line 475
    .local v21, "numSubGroups":B
    const-class v1, Ljava/lang/Long;

    .line 476
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v22

    .line 477
    .local v22, "bisSyncState":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    .line 479
    .local v11, "subgroupMetadata":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeAudioContentMetadata;>;"
    sget-object v1, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v11, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 481
    new-instance v23, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    move-object/from16 v1, v23

    move v2, v13

    move v3, v14

    move-object v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move-object/from16 v9, v20

    move/from16 v10, v21

    move-object/from16 v24, v11

    .end local v11    # "subgroupMetadata":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeAudioContentMetadata;>;"
    .local v24, "subgroupMetadata":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeAudioContentMetadata;>;"
    move-object/from16 v11, v22

    move/from16 v25, v12

    .end local v12    # "badCodeLen":I
    .local v25, "badCodeLen":I
    move-object/from16 v12, v24

    invoke-direct/range {v1 .. v12}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;-><init>(IILandroid/bluetooth/BluetoothDevice;IIII[BILjava/util/List;Ljava/util/List;)V

    return-object v23
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 454
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/BluetoothLeBroadcastReceiveState;
    .locals 1
    .param p1, "size"    # I

    .line 496
    new-array v0, p1, [Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 454
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState$1;->newArray(I)[Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    move-result-object p1

    return-object p1
.end method
