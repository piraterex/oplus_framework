.class Landroid/bluetooth/le/ScanFilter$1;
.super Ljava/lang/Object;
.source "ScanFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/ScanFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/le/ScanFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/ScanFilter;
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 253
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 254
    .local v0, "builder":Landroid/bluetooth/le/ScanFilter$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 257
    :cond_0
    const/4 v1, 0x0

    .line 259
    .local v1, "address":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 262
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 263
    const-class v3, Landroid/os/ParcelUuid;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 264
    .local v3, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {v0, v3}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 266
    const-class v4, Landroid/os/ParcelUuid;

    .line 267
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 266
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 268
    .local v4, "uuidMask":Landroid/os/ParcelUuid;
    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 271
    .end local v3    # "uuid":Landroid/os/ParcelUuid;
    .end local v4    # "uuidMask":Landroid/os/ParcelUuid;
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 272
    const-class v3, Landroid/os/ParcelUuid;

    .line 273
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 272
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 274
    .local v3, "solicitationUuid":Landroid/os/ParcelUuid;
    invoke-virtual {v0, v3}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceSolicitationUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 276
    const-class v4, Landroid/os/ParcelUuid;

    .line 277
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 276
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 278
    .local v4, "solicitationUuidMask":Landroid/os/ParcelUuid;
    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceSolicitationUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 282
    .end local v3    # "solicitationUuid":Landroid/os/ParcelUuid;
    .end local v4    # "solicitationUuidMask":Landroid/os/ParcelUuid;
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 283
    const-class v3, Landroid/os/ParcelUuid;

    .line 284
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 285
    .local v3, "servcieDataUuid":Landroid/os/ParcelUuid;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_5

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 287
    .local v4, "serviceDataLength":I
    new-array v5, v4, [B

    .line 288
    .local v5, "serviceData":[B
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_4

    .line 290
    invoke-virtual {v0, v3, v5}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/ScanFilter$Builder;

    goto :goto_0

    .line 292
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 293
    .local v6, "serviceDataMaskLength":I
    new-array v7, v6, [B

    .line 294
    .local v7, "serviceDataMask":[B
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readByteArray([B)V

    .line 295
    invoke-virtual {v0, v3, v5, v7}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 301
    .end local v3    # "servcieDataUuid":Landroid/os/ParcelUuid;
    .end local v4    # "serviceDataLength":I
    .end local v5    # "serviceData":[B
    .end local v6    # "serviceDataMaskLength":I
    .end local v7    # "serviceDataMask":[B
    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 302
    .local v3, "manufacturerId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_7

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 304
    .local v4, "manufacturerDataLength":I
    new-array v5, v4, [B

    .line 305
    .local v5, "manufacturerData":[B
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_6

    .line 307
    invoke-virtual {v0, v3, v5}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B)Landroid/bluetooth/le/ScanFilter$Builder;

    goto :goto_1

    .line 309
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 310
    .local v6, "manufacturerDataMaskLength":I
    new-array v7, v6, [B

    .line 311
    .local v7, "manufacturerDataMask":[B
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readByteArray([B)V

    .line 312
    invoke-virtual {v0, v3, v5, v7}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 318
    .end local v4    # "manufacturerDataLength":I
    .end local v5    # "manufacturerData":[B
    .end local v6    # "manufacturerDataMaskLength":I
    .end local v7    # "manufacturerDataMask":[B
    :cond_7
    :goto_1
    if-eqz v1, :cond_9

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 320
    .local v4, "addressType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v2, :cond_8

    .line 321
    const/16 v5, 0x10

    new-array v5, v5, [B

    .line 322
    .local v5, "irk":[B
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    .line 323
    invoke-virtual {v0, v1, v4, v5}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;I[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 324
    .end local v5    # "irk":[B
    goto :goto_2

    .line 325
    :cond_8
    invoke-virtual {v0, v1, v4}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;I)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 330
    .end local v4    # "addressType":I
    :cond_9
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 331
    .local v4, "advertisingDataType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v2, :cond_b

    .line 332
    const/4 v5, 0x0

    .line 333
    .local v5, "advertisingData":[B
    const/4 v6, 0x0

    .line 335
    .local v6, "advertisingDataMask":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 336
    .local v7, "advertisingDataLength":I
    new-array v5, v7, [B

    .line 337
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-ne v8, v2, :cond_a

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 340
    .local v8, "advertisingDataMaskLength":I
    new-array v6, v8, [B

    .line 341
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readByteArray([B)V

    .line 343
    .end local v8    # "advertisingDataMaskLength":I
    :cond_a
    invoke-virtual {v0, v4, v5, v6}, Landroid/bluetooth/le/ScanFilter$Builder;->setAdvertisingDataTypeWithData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 347
    .end local v5    # "advertisingData":[B
    .end local v6    # "advertisingDataMask":[B
    .end local v7    # "advertisingDataLength":I
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 348
    .local v5, "orgId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v2, :cond_d

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 350
    .local v6, "tdsFlags":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 351
    .local v7, "tdsFlagsMask":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-ne v8, v2, :cond_c

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 353
    .local v2, "wifiNANHashLength":I
    new-array v8, v2, [B

    .line 354
    .local v8, "wifiNanHash":[B
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readByteArray([B)V

    .line 355
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/bluetooth/le/ScanFilter$Builder;->setTransportDiscoveryData(III[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 357
    .end local v2    # "wifiNANHashLength":I
    .end local v8    # "wifiNanHash":[B
    goto :goto_3

    .line 359
    :cond_c
    const/4 v2, 0x0

    invoke-virtual {v0, v5, v6, v7, v2}, Landroid/bluetooth/le/ScanFilter$Builder;->setTransportDiscoveryData(III[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 363
    .end local v6    # "tdsFlags":I
    .end local v7    # "tdsFlagsMask":I
    :cond_d
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 364
    .local v2, "groupBasedFiltering":Z
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/ScanFilter$Builder;->setGroupBasedFiltering(Z)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 365
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v6

    return-object v6
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 244
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/ScanFilter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/ScanFilter;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/le/ScanFilter;
    .locals 1
    .param p1, "size"    # I

    .line 248
    new-array v0, p1, [Landroid/bluetooth/le/ScanFilter;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 244
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/ScanFilter$1;->newArray(I)[Landroid/bluetooth/le/ScanFilter;

    move-result-object p1

    return-object p1
.end method
