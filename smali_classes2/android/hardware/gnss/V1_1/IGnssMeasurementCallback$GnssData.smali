.class public final Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;
.super Ljava/lang/Object;
.source "IGnssMeasurementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssData"
.end annotation


# instance fields
.field public blacklist clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

.field public blacklist measurements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->measurements:Ljava/util/ArrayList;

    .line 324
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;",
            ">;"
        }
    .end annotation

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 376
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 377
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x58

    int-to-long v5, v3

    .line 378
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 377
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 381
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 382
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 383
    new-instance v5, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;

    invoke-direct {v5}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;-><init>()V

    .line 384
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;
    mul-int/lit8 v6, v4, 0x58

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 385
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 389
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_0
    return-object v0
.end method

.method public static final blacklist writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;",
            ">;)V"
        }
    .end annotation

    .line 418
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 420
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 421
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 422
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 423
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x58

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 424
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 425
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;

    mul-int/lit8 v5, v3, 0x58

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 424
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 427
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 430
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 431
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 328
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 329
    return v0

    .line 331
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 332
    return v1

    .line 334
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;

    if-eq v2, v3, :cond_2

    .line 335
    return v1

    .line 337
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;

    .line 338
    .local v2, "other":Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;
    iget-object v3, p0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->measurements:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->measurements:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 339
    return v1

    .line 341
    :cond_3
    iget-object v3, p0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    iget-object v4, v2, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 342
    return v1

    .line 344
    :cond_4
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 349
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->measurements:Ljava/util/ArrayList;

    .line 350
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    .line 351
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 349
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 13
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 395
    move-object v0, p0

    move-object v9, p1

    move-object v10, p2

    const-wide/16 v1, 0x0

    add-long v3, p3, v1

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    invoke-virtual {p2, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 396
    .local v11, "_hidl_vec_size":I
    mul-int/lit16 v3, v11, 0x98

    int-to-long v3, v3

    .line 397
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v7, p3, v1

    add-long/2addr v7, v1

    .line 396
    const/4 v12, 0x1

    move-object v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v12

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 400
    .local v1, "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->measurements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 401
    const/4 v2, 0x0

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v11, :cond_0

    .line 402
    new-instance v3, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;

    invoke-direct {v3}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;-><init>()V

    .line 403
    .local v3, "_hidl_vec_element":Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;
    mul-int/lit16 v4, v2, 0x98

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 404
    iget-object v4, v0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->measurements:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    .end local v3    # "_hidl_vec_element":Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v11    # "_hidl_vec_size":I
    :cond_0
    iget-object v1, v0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    const-wide/16 v2, 0x10

    add-long v2, p3, v2

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 408
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 367
    const-wide/16 v0, 0x58

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 368
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 369
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string v1, ".measurements = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    iget-object v1, p0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->measurements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 360
    const-string v1, ", .clock = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v1, p0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 362
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 8
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 436
    iget-object v0, p0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->measurements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 437
    .local v0, "_hidl_vec_size":I
    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 438
    add-long v3, p2, v1

    const-wide/16 v5, 0xc

    add-long/2addr v3, v5

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 439
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit16 v4, v0, 0x98

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 440
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 441
    iget-object v5, p0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->measurements:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;

    mul-int/lit16 v6, v4, 0x98

    int-to-long v6, v6

    invoke-virtual {v5, v3, v6, v7}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 440
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 443
    .end local v4    # "_hidl_index_0":I
    :cond_0
    add-long v4, p2, v1

    add-long/2addr v4, v1

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 445
    .end local v0    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    iget-object v0, p0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->clock:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;

    const-wide/16 v1, 0x10

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClock;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 446
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 411
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 412
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 413
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 414
    return-void
.end method
