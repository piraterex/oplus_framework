.class public final Landroid/location/GnssCapabilities$Builder;
.super Ljava/lang/Object;
.source "GnssCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mMeasurementCorrectionsFlags:I

.field private blacklist mPowerFlags:I

.field private blacklist mTopFlags:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 617
    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    .line 618
    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    .line 619
    return-void
.end method

.method public constructor whitelist <init>(Landroid/location/GnssCapabilities;)V
    .locals 1
    .param p1, "capabilities"    # Landroid/location/GnssCapabilities;

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    invoke-static {p1}, Landroid/location/GnssCapabilities;->-$$Nest$fgetmTopFlags(Landroid/location/GnssCapabilities;)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 623
    invoke-static {p1}, Landroid/location/GnssCapabilities;->-$$Nest$fgetmMeasurementCorrectionsFlags(Landroid/location/GnssCapabilities;)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    .line 624
    invoke-static {p1}, Landroid/location/GnssCapabilities;->-$$Nest$fgetmPowerFlags(Landroid/location/GnssCapabilities;)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    .line 625
    return-void
.end method

.method private static blacklist setFlag(IIZ)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "flag"    # I
    .param p2, "set"    # Z

    .line 887
    if-eqz p2, :cond_0

    .line 888
    or-int v0, p0, p1

    return v0

    .line 890
    :cond_0
    not-int v0, p1

    and-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public whitelist build()Landroid/location/GnssCapabilities;
    .locals 5

    .line 883
    new-instance v0, Landroid/location/GnssCapabilities;

    iget v1, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    iget v2, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    iget v3, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/location/GnssCapabilities;-><init>(IIILandroid/location/GnssCapabilities-IA;)V

    return-object v0
.end method

.method public whitelist setHasAntennaInfo(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z

    .line 752
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x800

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 753
    return-object p0
.end method

.method public whitelist setHasGeofencing(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 684
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x20

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 685
    return-object p0
.end method

.method public whitelist setHasLowPowerMode(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 711
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x100

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 712
    return-object p0
.end method

.method public whitelist setHasMeasurementCorrections(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 744
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x400

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 745
    return-object p0
.end method

.method public whitelist setHasMeasurementCorrectionsExcessPathLength(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 798
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    .line 800
    return-object p0
.end method

.method public whitelist setHasMeasurementCorrectionsForDriving(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 774
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x4000

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 776
    return-object p0
.end method

.method public whitelist setHasMeasurementCorrectionsLosSats(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 786
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    .line 788
    return-object p0
.end method

.method public whitelist setHasMeasurementCorrectionsReflectingPlane(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 810
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    .line 812
    return-object p0
.end method

.method public whitelist setHasMeasurementCorrelationVectors(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 763
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x1000

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 764
    return-object p0
.end method

.method public whitelist setHasMeasurements(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z

    .line 692
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x40

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 693
    return-object p0
.end method

.method public blacklist setHasMsa(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z

    .line 653
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 654
    return-object p0
.end method

.method public blacklist setHasMsb(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z

    .line 643
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 644
    return-object p0
.end method

.method public whitelist setHasNavigationMessages(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z

    .line 700
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x80

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 701
    return-object p0
.end method

.method public blacklist setHasOnDemandTime(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z

    .line 673
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x10

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 674
    return-object p0
.end method

.method public blacklist setHasPowerMultibandAcquisition(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z

    .line 864
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    const/16 v1, 0x10

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    .line 866
    return-object p0
.end method

.method public blacklist setHasPowerMultibandTracking(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z

    .line 842
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    .line 844
    return-object p0
.end method

.method public blacklist setHasPowerOtherModes(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z

    .line 875
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    const/16 v1, 0x20

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    .line 876
    return-object p0
.end method

.method public blacklist setHasPowerSinglebandAcquisition(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z

    .line 853
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    const/16 v1, 0x8

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    .line 855
    return-object p0
.end method

.method public blacklist setHasPowerSinglebandTracking(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z

    .line 831
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    .line 833
    return-object p0
.end method

.method public blacklist setHasPowerTotal(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z

    .line 821
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    .line 822
    return-object p0
.end method

.method public whitelist setHasSatelliteBlocklist(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 722
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x200

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 723
    return-object p0
.end method

.method public whitelist setHasSatellitePvt(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 733
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x2000

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 734
    return-object p0
.end method

.method public blacklist setHasScheduling(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z

    .line 633
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 634
    return-object p0
.end method

.method public blacklist setHasSingleShot(Z)Landroid/location/GnssCapabilities$Builder;
    .locals 2
    .param p1, "capable"    # Z

    .line 663
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x8

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 664
    return-object p0
.end method
