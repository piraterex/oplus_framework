.class Landroid/bluetooth/le/AdvertiseData$1;
.super Ljava/lang/Object;
.source "AdvertiseData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertiseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/le/AdvertiseData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/AdvertiseData;
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 210
    new-instance v0, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 211
    .local v0, "builder":Landroid/bluetooth/le/AdvertiseData$Builder;
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 212
    .local v1, "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 213
    .local v3, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {v0, v3}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 214
    .end local v3    # "uuid":Landroid/os/ParcelUuid;
    goto :goto_0

    .line 216
    :cond_0
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 217
    .local v2, "solicitationUuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 218
    .local v4, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {v0, v4}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceSolicitationUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 219
    .end local v4    # "uuid":Landroid/os/ParcelUuid;
    goto :goto_1

    .line 221
    :cond_1
    sget-object v3, Landroid/bluetooth/le/TransportDiscoveryData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 222
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 223
    .local v3, "transportDiscoveryData":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/TransportDiscoveryData;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/le/TransportDiscoveryData;

    .line 224
    .local v5, "tdd":Landroid/bluetooth/le/TransportDiscoveryData;
    invoke-virtual {v0, v5}, Landroid/bluetooth/le/AdvertiseData$Builder;->addTransportDiscoveryData(Landroid/bluetooth/le/TransportDiscoveryData;)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 225
    .end local v5    # "tdd":Landroid/bluetooth/le/TransportDiscoveryData;
    goto :goto_2

    .line 227
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 228
    .local v4, "manufacturerSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v4, :cond_3

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 230
    .local v6, "manufacturerId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 231
    .local v7, "manufacturerData":[B
    invoke-virtual {v0, v6, v7}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 228
    .end local v6    # "manufacturerId":I
    .end local v7    # "manufacturerData":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 233
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 234
    .local v5, "serviceDataSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v6, v5, :cond_4

    .line 235
    sget-object v7, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 236
    .local v7, "serviceDataUuid":Landroid/os/ParcelUuid;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 237
    .local v8, "serviceData":[B
    invoke-virtual {v0, v7, v8}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 234
    .end local v7    # "serviceDataUuid":Landroid/os/ParcelUuid;
    .end local v8    # "serviceData":[B
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 239
    .end local v6    # "i":I
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_5

    move v6, v8

    goto :goto_5

    :cond_5
    move v6, v7

    :goto_5
    invoke-virtual {v0, v6}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-ne v6, v8, :cond_6

    move v7, v8

    :cond_6
    invoke-virtual {v0, v7}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 241
    invoke-virtual {v0}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v6

    return-object v6
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/AdvertiseData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/AdvertiseData;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/le/AdvertiseData;
    .locals 1
    .param p1, "size"    # I

    .line 205
    new-array v0, p1, [Landroid/bluetooth/le/AdvertiseData;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/AdvertiseData$1;->newArray(I)[Landroid/bluetooth/le/AdvertiseData;

    move-result-object p1

    return-object p1
.end method
