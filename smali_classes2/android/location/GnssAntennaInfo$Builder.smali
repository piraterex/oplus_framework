.class public Landroid/location/GnssAntennaInfo$Builder;
.super Ljava/lang/Object;
.source "GnssAntennaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAntennaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCarrierFrequencyMHz:D

.field private blacklist mPhaseCenterOffset:Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

.field private blacklist mPhaseCenterVariationCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

.field private blacklist mSignalGainCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;


# direct methods
.method public constructor whitelist <init>()V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 405
    new-instance v13, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;-><init>(DDDDDD)V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, v13}, Landroid/location/GnssAntennaInfo$Builder;-><init>(DLandroid/location/GnssAntennaInfo$PhaseCenterOffset;)V

    .line 406
    return-void
.end method

.method public constructor whitelist <init>(DLandroid/location/GnssAntennaInfo$PhaseCenterOffset;)V
    .locals 1
    .param p1, "carrierFrequencyMHz"    # D
    .param p3, "phaseCenterOffset"    # Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-wide p1, p0, Landroid/location/GnssAntennaInfo$Builder;->mCarrierFrequencyMHz:D

    .line 410
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    iput-object v0, p0, Landroid/location/GnssAntennaInfo$Builder;->mPhaseCenterOffset:Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    .line 411
    return-void
.end method

.method public constructor whitelist <init>(Landroid/location/GnssAntennaInfo;)V
    .locals 2
    .param p1, "antennaInfo"    # Landroid/location/GnssAntennaInfo;

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    invoke-static {p1}, Landroid/location/GnssAntennaInfo;->-$$Nest$fgetmCarrierFrequencyMHz(Landroid/location/GnssAntennaInfo;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssAntennaInfo$Builder;->mCarrierFrequencyMHz:D

    .line 415
    invoke-static {p1}, Landroid/location/GnssAntennaInfo;->-$$Nest$fgetmPhaseCenterOffset(Landroid/location/GnssAntennaInfo;)Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GnssAntennaInfo$Builder;->mPhaseCenterOffset:Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    .line 416
    invoke-static {p1}, Landroid/location/GnssAntennaInfo;->-$$Nest$fgetmPhaseCenterVariationCorrections(Landroid/location/GnssAntennaInfo;)Landroid/location/GnssAntennaInfo$SphericalCorrections;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GnssAntennaInfo$Builder;->mPhaseCenterVariationCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    .line 417
    invoke-static {p1}, Landroid/location/GnssAntennaInfo;->-$$Nest$fgetmSignalGainCorrections(Landroid/location/GnssAntennaInfo;)Landroid/location/GnssAntennaInfo$SphericalCorrections;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GnssAntennaInfo$Builder;->mSignalGainCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    .line 418
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/location/GnssAntennaInfo;
    .locals 8

    .line 477
    new-instance v7, Landroid/location/GnssAntennaInfo;

    iget-wide v1, p0, Landroid/location/GnssAntennaInfo$Builder;->mCarrierFrequencyMHz:D

    iget-object v3, p0, Landroid/location/GnssAntennaInfo$Builder;->mPhaseCenterOffset:Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    iget-object v4, p0, Landroid/location/GnssAntennaInfo$Builder;->mPhaseCenterVariationCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    iget-object v5, p0, Landroid/location/GnssAntennaInfo$Builder;->mSignalGainCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/location/GnssAntennaInfo;-><init>(DLandroid/location/GnssAntennaInfo$PhaseCenterOffset;Landroid/location/GnssAntennaInfo$SphericalCorrections;Landroid/location/GnssAntennaInfo$SphericalCorrections;Landroid/location/GnssAntennaInfo-IA;)V

    return-object v7
.end method

.method public whitelist setCarrierFrequencyMHz(D)Landroid/location/GnssAntennaInfo$Builder;
    .locals 0
    .param p1, "carrierFrequencyMHz"    # D

    .line 428
    iput-wide p1, p0, Landroid/location/GnssAntennaInfo$Builder;->mCarrierFrequencyMHz:D

    .line 429
    return-object p0
.end method

.method public whitelist setPhaseCenterOffset(Landroid/location/GnssAntennaInfo$PhaseCenterOffset;)Landroid/location/GnssAntennaInfo$Builder;
    .locals 1
    .param p1, "phaseCenterOffset"    # Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    .line 440
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    iput-object v0, p0, Landroid/location/GnssAntennaInfo$Builder;->mPhaseCenterOffset:Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    .line 441
    return-object p0
.end method

.method public whitelist setPhaseCenterVariationCorrections(Landroid/location/GnssAntennaInfo$SphericalCorrections;)Landroid/location/GnssAntennaInfo$Builder;
    .locals 0
    .param p1, "phaseCenterVariationCorrections"    # Landroid/location/GnssAntennaInfo$SphericalCorrections;

    .line 453
    iput-object p1, p0, Landroid/location/GnssAntennaInfo$Builder;->mPhaseCenterVariationCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    .line 454
    return-object p0
.end method

.method public whitelist setSignalGainCorrections(Landroid/location/GnssAntennaInfo$SphericalCorrections;)Landroid/location/GnssAntennaInfo$Builder;
    .locals 0
    .param p1, "signalGainCorrections"    # Landroid/location/GnssAntennaInfo$SphericalCorrections;

    .line 466
    iput-object p1, p0, Landroid/location/GnssAntennaInfo$Builder;->mSignalGainCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    .line 467
    return-object p0
.end method
