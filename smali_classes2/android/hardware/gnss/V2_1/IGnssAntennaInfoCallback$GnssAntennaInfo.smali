.class public final Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;
.super Ljava/lang/Object;
.source "IGnssAntennaInfoCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssAntennaInfo"
.end annotation


# instance fields
.field public blacklist carrierFrequencyMHz:D

.field public blacklist phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

.field public blacklist phaseCenterVariationCorrectionMillimeters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist phaseCenterVariationCorrectionUncertaintyMillimeters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist signalGainCorrectionDbi:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist signalGainCorrectionUncertaintyDbi:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->carrierFrequencyMHz:D

    .line 367
    new-instance v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    invoke-direct {v0}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:Ljava/util/ArrayList;

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:Ljava/util/ArrayList;

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:Ljava/util/ArrayList;

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:Ljava/util/ArrayList;

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
            "Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;",
            ">;"
        }
    .end annotation

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 505
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 506
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x78

    int-to-long v5, v3

    .line 507
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 506
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 510
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 511
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 512
    new-instance v5, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;

    invoke-direct {v5}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;-><init>()V

    .line 513
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;
    mul-int/lit8 v6, v4, 0x78

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 514
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 518
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
            "Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;",
            ">;)V"
        }
    .end annotation

    .line 587
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 589
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 590
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 591
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 592
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x78

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 593
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 594
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;

    mul-int/lit8 v5, v3, 0x78

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 593
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 596
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 599
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 600
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 433
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 434
    return v0

    .line 436
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 437
    return v1

    .line 439
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;

    if-eq v2, v3, :cond_2

    .line 440
    return v1

    .line 442
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;

    .line 443
    .local v2, "other":Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;
    iget-wide v3, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->carrierFrequencyMHz:D

    iget-wide v5, v2, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->carrierFrequencyMHz:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_3

    .line 444
    return v1

    .line 446
    :cond_3
    iget-object v3, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    iget-object v4, v2, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 447
    return v1

    .line 449
    :cond_4
    iget-object v3, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 450
    return v1

    .line 452
    :cond_5
    iget-object v3, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 453
    return v1

    .line 455
    :cond_6
    iget-object v3, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 456
    return v1

    .line 458
    :cond_7
    iget-object v3, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 459
    return v1

    .line 461
    :cond_8
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 466
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->carrierFrequencyMHz:D

    .line 467
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    .line 468
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:Ljava/util/ArrayList;

    .line 469
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:Ljava/util/ArrayList;

    .line 470
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:Ljava/util/ArrayList;

    .line 471
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:Ljava/util/ArrayList;

    .line 472
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 466
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 17
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 523
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-wide/16 v11, 0x0

    add-long v1, p3, v11

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->carrierFrequencyMHz:D

    .line 524
    iget-object v1, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    const-wide/16 v13, 0x8

    add-long v2, p3, v13

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 526
    const-wide/16 v1, 0x38

    add-long v3, p3, v1

    add-long/2addr v3, v13

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v15

    .line 527
    .local v15, "_hidl_vec_size":I
    mul-int/lit8 v3, v15, 0x10

    int-to-long v3, v3

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    add-long v7, v1, v11

    .line 527
    const/16 v16, 0x1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 531
    .local v1, "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 532
    const/4 v2, 0x0

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v15, :cond_0

    .line 533
    new-instance v3, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;

    invoke-direct {v3}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;-><init>()V

    .line 534
    .local v3, "_hidl_vec_element":Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;
    mul-int/lit8 v4, v2, 0x10

    int-to-long v4, v4

    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 535
    iget-object v4, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    .end local v3    # "_hidl_vec_element":Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 539
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v15    # "_hidl_vec_size":I
    :cond_0
    const-wide/16 v1, 0x48

    add-long v3, p3, v1

    add-long/2addr v3, v13

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v15

    .line 540
    .restart local v15    # "_hidl_vec_size":I
    mul-int/lit8 v3, v15, 0x10

    int-to-long v3, v3

    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    add-long v7, v1, v11

    const/16 v16, 0x1

    .line 540
    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 544
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 545
    const/4 v2, 0x0

    .restart local v2    # "_hidl_index_0":I
    :goto_1
    if-ge v2, v15, :cond_1

    .line 546
    new-instance v3, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;

    invoke-direct {v3}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;-><init>()V

    .line 547
    .restart local v3    # "_hidl_vec_element":Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;
    mul-int/lit8 v4, v2, 0x10

    int-to-long v4, v4

    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 548
    iget-object v4, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    .end local v3    # "_hidl_vec_element":Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 552
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v15    # "_hidl_vec_size":I
    :cond_1
    const-wide/16 v1, 0x58

    add-long v3, p3, v1

    add-long/2addr v3, v13

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v15

    .line 553
    .restart local v15    # "_hidl_vec_size":I
    mul-int/lit8 v3, v15, 0x10

    int-to-long v3, v3

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    add-long v7, v1, v11

    const/16 v16, 0x1

    .line 553
    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 557
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 558
    const/4 v2, 0x0

    .restart local v2    # "_hidl_index_0":I
    :goto_2
    if-ge v2, v15, :cond_2

    .line 559
    new-instance v3, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;

    invoke-direct {v3}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;-><init>()V

    .line 560
    .restart local v3    # "_hidl_vec_element":Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;
    mul-int/lit8 v4, v2, 0x10

    int-to-long v4, v4

    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 561
    iget-object v4, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    .end local v3    # "_hidl_vec_element":Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 565
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v15    # "_hidl_vec_size":I
    :cond_2
    const-wide/16 v1, 0x68

    add-long v3, p3, v1

    add-long/2addr v3, v13

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 566
    .local v13, "_hidl_vec_size":I
    mul-int/lit8 v3, v13, 0x10

    int-to-long v3, v3

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    add-long v7, v1, v11

    const/4 v11, 0x1

    .line 566
    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v11

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 570
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 571
    const/4 v2, 0x0

    .restart local v2    # "_hidl_index_0":I
    :goto_3
    if-ge v2, v13, :cond_3

    .line 572
    new-instance v3, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;

    invoke-direct {v3}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;-><init>()V

    .line 573
    .restart local v3    # "_hidl_vec_element":Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;
    mul-int/lit8 v4, v2, 0x10

    int-to-long v4, v4

    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 574
    iget-object v4, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    .end local v3    # "_hidl_vec_element":Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 577
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v13    # "_hidl_vec_size":I
    :cond_3
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 496
    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 497
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 498
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    const-string v1, ".carrierFrequencyMHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->carrierFrequencyMHz:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 481
    const-string v1, ", .phaseCenterOffsetCoordinateMillimeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 483
    const-string v1, ", .phaseCenterVariationCorrectionMillimeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 485
    const-string v1, ", .phaseCenterVariationCorrectionUncertaintyMillimeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 487
    const-string v1, ", .signalGainCorrectionDbi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 489
    const-string v1, ", .signalGainCorrectionUncertaintyDbi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 491
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 16
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 604
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget-wide v6, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->carrierFrequencyMHz:D

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 605
    iget-object v4, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    const-wide/16 v5, 0x8

    add-long v7, p2, v5

    invoke-virtual {v4, v1, v7, v8}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 607
    iget-object v4, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 608
    .local v4, "_hidl_vec_size":I
    const-wide/16 v7, 0x38

    add-long v9, p2, v7

    add-long/2addr v9, v5

    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 609
    add-long v9, p2, v7

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    const/4 v13, 0x0

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 610
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v4, 0x10

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 611
    .local v9, "childBlob":Landroid/os/HwBlob;
    const/4 v10, 0x0

    .local v10, "_hidl_index_0":I
    :goto_0
    if-ge v10, v4, :cond_0

    .line 612
    iget-object v14, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;

    mul-int/lit8 v15, v10, 0x10

    int-to-long v11, v15

    invoke-virtual {v14, v9, v11, v12}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 611
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v11, 0xc

    goto :goto_0

    .line 614
    .end local v10    # "_hidl_index_0":I
    :cond_0
    add-long v7, p2, v7

    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 617
    .end local v4    # "_hidl_vec_size":I
    .end local v9    # "childBlob":Landroid/os/HwBlob;
    iget-object v4, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 618
    .restart local v4    # "_hidl_vec_size":I
    const-wide/16 v7, 0x48

    add-long v9, p2, v7

    add-long/2addr v9, v5

    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 619
    add-long v9, p2, v7

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 620
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v4, 0x10

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 621
    .restart local v9    # "childBlob":Landroid/os/HwBlob;
    const/4 v10, 0x0

    .restart local v10    # "_hidl_index_0":I
    :goto_1
    if-ge v10, v4, :cond_1

    .line 622
    iget-object v11, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;

    mul-int/lit8 v12, v10, 0x10

    int-to-long v14, v12

    invoke-virtual {v11, v9, v14, v15}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 621
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 624
    .end local v10    # "_hidl_index_0":I
    :cond_1
    add-long v7, p2, v7

    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 627
    .end local v4    # "_hidl_vec_size":I
    .end local v9    # "childBlob":Landroid/os/HwBlob;
    iget-object v4, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 628
    .restart local v4    # "_hidl_vec_size":I
    const-wide/16 v7, 0x58

    add-long v9, p2, v7

    add-long/2addr v9, v5

    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 629
    add-long v9, p2, v7

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 630
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v4, 0x10

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 631
    .restart local v9    # "childBlob":Landroid/os/HwBlob;
    const/4 v10, 0x0

    .restart local v10    # "_hidl_index_0":I
    :goto_2
    if-ge v10, v4, :cond_2

    .line 632
    iget-object v11, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;

    mul-int/lit8 v12, v10, 0x10

    int-to-long v14, v12

    invoke-virtual {v11, v9, v14, v15}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 631
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 634
    .end local v10    # "_hidl_index_0":I
    :cond_2
    add-long v7, p2, v7

    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 637
    .end local v4    # "_hidl_vec_size":I
    .end local v9    # "childBlob":Landroid/os/HwBlob;
    iget-object v4, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 638
    .restart local v4    # "_hidl_vec_size":I
    const-wide/16 v7, 0x68

    add-long v9, p2, v7

    add-long/2addr v9, v5

    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 639
    add-long v5, p2, v7

    const-wide/16 v9, 0xc

    add-long/2addr v5, v9

    invoke-virtual {v1, v5, v6, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 640
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x10

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 641
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_3
    if-ge v6, v4, :cond_3

    .line 642
    iget-object v9, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;

    mul-int/lit8 v10, v6, 0x10

    int-to-long v10, v10

    invoke-virtual {v9, v5, v10, v11}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 641
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 644
    .end local v6    # "_hidl_index_0":I
    :cond_3
    add-long v6, p2, v7

    add-long/2addr v6, v2

    invoke-virtual {v1, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 646
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 580
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 581
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 582
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 583
    return-void
.end method
