.class public final Landroid/location/GnssStatus$Builder;
.super Ljava/lang/Object;
.source "GnssStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mSatellites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/location/GnssStatus$GnssSvInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public whitelist addSatellite(IIFFFZZZZFZF)Landroid/location/GnssStatus$Builder;
    .locals 17
    .param p1, "constellationType"    # I
    .param p2, "svid"    # I
    .param p3, "cn0DbHz"    # F
    .param p4, "elevation"    # F
    .param p5, "azimuth"    # F
    .param p6, "hasEphemeris"    # Z
    .param p7, "hasAlmanac"    # Z
    .param p8, "usedInFix"    # Z
    .param p9, "hasCarrierFrequency"    # Z
    .param p10, "carrierFrequency"    # F
    .param p11, "hasBasebandCn0DbHz"    # Z
    .param p12, "basebandCn0DbHz"    # F

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    new-instance v15, Landroid/location/GnssStatus$GnssSvInfo;

    const/16 v16, 0x0

    move-object v2, v15

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move-object v0, v15

    move-object/from16 v15, v16

    invoke-direct/range {v2 .. v15}, Landroid/location/GnssStatus$GnssSvInfo;-><init>(IIFFFZZZZFZFLandroid/location/GnssStatus$GnssSvInfo-IA;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    return-object p0
.end method

.method public whitelist build()Landroid/location/GnssStatus;
    .locals 19

    .line 480
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 481
    .local v1, "svCount":I
    new-array v11, v1, [I

    .line 482
    .local v11, "svidWithFlags":[I
    new-array v12, v1, [F

    .line 483
    .local v12, "cn0DbHzs":[F
    new-array v13, v1, [F

    .line 484
    .local v13, "elevations":[F
    new-array v14, v1, [F

    .line 485
    .local v14, "azimuths":[F
    new-array v15, v1, [F

    .line 486
    .local v15, "carrierFrequencies":[F
    new-array v10, v1, [F

    .line 488
    .local v10, "basebandCn0DbHzs":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v11

    if-ge v2, v3, :cond_0

    .line 489
    iget-object v3, v0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GnssStatus$GnssSvInfo;

    invoke-static {v3}, Landroid/location/GnssStatus$GnssSvInfo;->-$$Nest$fgetmSvidWithFlags(Landroid/location/GnssStatus$GnssSvInfo;)I

    move-result v3

    aput v3, v11, v2

    .line 488
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 491
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v3, v12

    if-ge v2, v3, :cond_1

    .line 492
    iget-object v3, v0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GnssStatus$GnssSvInfo;

    invoke-static {v3}, Landroid/location/GnssStatus$GnssSvInfo;->-$$Nest$fgetmCn0DbHz(Landroid/location/GnssStatus$GnssSvInfo;)F

    move-result v3

    aput v3, v12, v2

    .line 491
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 494
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v3, v13

    if-ge v2, v3, :cond_2

    .line 495
    iget-object v3, v0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GnssStatus$GnssSvInfo;

    invoke-static {v3}, Landroid/location/GnssStatus$GnssSvInfo;->-$$Nest$fgetmElevation(Landroid/location/GnssStatus$GnssSvInfo;)F

    move-result v3

    aput v3, v13, v2

    .line 494
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 497
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v3, v14

    if-ge v2, v3, :cond_3

    .line 498
    iget-object v3, v0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GnssStatus$GnssSvInfo;

    invoke-static {v3}, Landroid/location/GnssStatus$GnssSvInfo;->-$$Nest$fgetmAzimuth(Landroid/location/GnssStatus$GnssSvInfo;)F

    move-result v3

    aput v3, v14, v2

    .line 497
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 500
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    array-length v3, v15

    if-ge v2, v3, :cond_4

    .line 501
    iget-object v3, v0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GnssStatus$GnssSvInfo;

    invoke-static {v3}, Landroid/location/GnssStatus$GnssSvInfo;->-$$Nest$fgetmCarrierFrequency(Landroid/location/GnssStatus$GnssSvInfo;)F

    move-result v3

    aput v3, v15, v2

    .line 500
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 503
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    array-length v3, v10

    if-ge v2, v3, :cond_5

    .line 504
    iget-object v3, v0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GnssStatus$GnssSvInfo;

    invoke-static {v3}, Landroid/location/GnssStatus$GnssSvInfo;->-$$Nest$fgetmBasebandCn0DbHz(Landroid/location/GnssStatus$GnssSvInfo;)F

    move-result v3

    aput v3, v10, v2

    .line 503
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 507
    .end local v2    # "i":I
    :cond_5
    new-instance v16, Landroid/location/GnssStatus;

    const/16 v17, 0x0

    move-object/from16 v2, v16

    move v3, v1

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move-object v9, v10

    move-object/from16 v18, v10

    .end local v10    # "basebandCn0DbHzs":[F
    .local v18, "basebandCn0DbHzs":[F
    move-object/from16 v10, v17

    invoke-direct/range {v2 .. v10}, Landroid/location/GnssStatus;-><init>(I[I[F[F[F[F[FLandroid/location/GnssStatus-IA;)V

    return-object v16
.end method

.method public whitelist clearSatellites()Landroid/location/GnssStatus$Builder;
    .locals 1

    .line 471
    iget-object v0, p0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 472
    return-object p0
.end method
