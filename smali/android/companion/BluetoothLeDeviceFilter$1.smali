.class Landroid/companion/BluetoothLeDeviceFilter$1;
.super Ljava/lang/Object;
.source "BluetoothLeDeviceFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/BluetoothLeDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/companion/BluetoothLeDeviceFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/companion/BluetoothLeDeviceFilter;
    .locals 17
    .param p1, "in"    # Landroid/os/Parcel;

    .line 253
    new-instance v0, Landroid/companion/BluetoothLeDeviceFilter$Builder;

    invoke-direct {v0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;-><init>()V

    .line 254
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/companion/BluetoothDeviceFilterUtils;->patternFromString(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setNamePattern(Ljava/util/regex/Pattern;)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    move-result-object v0

    const-class v1, Landroid/bluetooth/le/ScanFilter;

    .line 255
    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-virtual {v3, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v0, v1}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setScanFilter(Landroid/bluetooth/le/ScanFilter;)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    move-result-object v0

    .line 256
    .local v0, "builder":Landroid/companion/BluetoothLeDeviceFilter$Builder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 257
    .local v1, "rawDataFilter":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 258
    .local v2, "rawDataFilterMask":[B
    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {v0, v1, v2}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setRawDataFilter([B[B)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    .line 261
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 262
    .local v10, "renamePrefix":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 263
    .local v11, "suffix":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 264
    .local v12, "bytesFrom":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 265
    .local v13, "bytesTo":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 266
    .local v14, "nameFrom":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 267
    .local v15, "nameTo":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 268
    .local v16, "bytesReverseOrder":Z
    if-eqz v10, :cond_3

    .line 269
    if-ltz v12, :cond_2

    .line 270
    nop

    .line 271
    if-eqz v16, :cond_1

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_1
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    move-object v9, v4

    .line 270
    move-object v4, v0

    move-object v5, v10

    move-object v6, v11

    move v7, v12

    move v8, v13

    invoke-virtual/range {v4 .. v9}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setRenameFromBytes(Ljava/lang/String;Ljava/lang/String;IILjava/nio/ByteOrder;)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    goto :goto_1

    .line 273
    :cond_2
    invoke-virtual {v0, v10, v11, v14, v15}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setRenameFromName(Ljava/lang/String;Ljava/lang/String;II)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    .line 276
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->build()Landroid/companion/BluetoothLeDeviceFilter;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 250
    invoke-virtual {p0, p1}, Landroid/companion/BluetoothLeDeviceFilter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/companion/BluetoothLeDeviceFilter;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/companion/BluetoothLeDeviceFilter;
    .locals 1
    .param p1, "size"    # I

    .line 281
    new-array v0, p1, [Landroid/companion/BluetoothLeDeviceFilter;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 250
    invoke-virtual {p0, p1}, Landroid/companion/BluetoothLeDeviceFilter$1;->newArray(I)[Landroid/companion/BluetoothLeDeviceFilter;

    move-result-object p1

    return-object p1
.end method
