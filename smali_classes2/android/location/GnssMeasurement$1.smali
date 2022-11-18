.class Landroid/location/GnssMeasurement$1;
.super Ljava/lang/Object;
.source "GnssMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssMeasurement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurement;
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1841
    new-instance v0, Landroid/location/GnssMeasurement;

    invoke-direct {v0}, Landroid/location/GnssMeasurement;-><init>()V

    .line 1843
    .local v0, "gnssMeasurement":Landroid/location/GnssMeasurement;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-$$Nest$fputmFlags(Landroid/location/GnssMeasurement;I)V

    .line 1844
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-$$Nest$fputmSvid(Landroid/location/GnssMeasurement;I)V

    .line 1845
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-$$Nest$fputmConstellationType(Landroid/location/GnssMeasurement;I)V

    .line 1846
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmTimeOffsetNanos(Landroid/location/GnssMeasurement;D)V

    .line 1847
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-$$Nest$fputmState(Landroid/location/GnssMeasurement;I)V

    .line 1848
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmReceivedSvTimeNanos(Landroid/location/GnssMeasurement;J)V

    .line 1849
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmReceivedSvTimeUncertaintyNanos(Landroid/location/GnssMeasurement;J)V

    .line 1850
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmCn0DbHz(Landroid/location/GnssMeasurement;D)V

    .line 1851
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmPseudorangeRateMetersPerSecond(Landroid/location/GnssMeasurement;D)V

    .line 1852
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmPseudorangeRateUncertaintyMetersPerSecond(Landroid/location/GnssMeasurement;D)V

    .line 1853
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-$$Nest$fputmAccumulatedDeltaRangeState(Landroid/location/GnssMeasurement;I)V

    .line 1854
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmAccumulatedDeltaRangeMeters(Landroid/location/GnssMeasurement;D)V

    .line 1855
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmAccumulatedDeltaRangeUncertaintyMeters(Landroid/location/GnssMeasurement;D)V

    .line 1856
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-$$Nest$fputmCarrierFrequencyHz(Landroid/location/GnssMeasurement;F)V

    .line 1857
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmCarrierCycles(Landroid/location/GnssMeasurement;J)V

    .line 1858
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmCarrierPhase(Landroid/location/GnssMeasurement;D)V

    .line 1859
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmCarrierPhaseUncertainty(Landroid/location/GnssMeasurement;D)V

    .line 1860
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-$$Nest$fputmMultipathIndicator(Landroid/location/GnssMeasurement;I)V

    .line 1861
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmSnrInDb(Landroid/location/GnssMeasurement;D)V

    .line 1862
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmAutomaticGainControlLevelInDb(Landroid/location/GnssMeasurement;D)V

    .line 1863
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-$$Nest$fputmCodeType(Landroid/location/GnssMeasurement;Ljava/lang/String;)V

    .line 1864
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmBasebandCn0DbHz(Landroid/location/GnssMeasurement;D)V

    .line 1865
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmFullInterSignalBiasNanos(Landroid/location/GnssMeasurement;D)V

    .line 1866
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmFullInterSignalBiasUncertaintyNanos(Landroid/location/GnssMeasurement;D)V

    .line 1867
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmSatelliteInterSignalBiasNanos(Landroid/location/GnssMeasurement;D)V

    .line 1868
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmSatelliteInterSignalBiasUncertaintyNanos(Landroid/location/GnssMeasurement;D)V

    .line 1869
    invoke-virtual {v0}, Landroid/location/GnssMeasurement;->hasSatellitePvt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1870
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1871
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const-class v2, Landroid/location/SatellitePvt;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/SatellitePvt;

    invoke-static {v0, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmSatellitePvt(Landroid/location/GnssMeasurement;Landroid/location/SatellitePvt;)V

    .line 1873
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    :cond_0
    invoke-virtual {v0}, Landroid/location/GnssMeasurement;->hasCorrelationVectors()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1874
    nop

    .line 1875
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v1, v1, [Landroid/location/CorrelationVector;

    .line 1876
    .local v1, "correlationVectorsArray":[Landroid/location/CorrelationVector;
    sget-object v2, Landroid/location/CorrelationVector;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 1877
    nop

    .line 1878
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1879
    .local v2, "corrVecCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/location/CorrelationVector;>;"
    nop

    .line 1880
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/location/GnssMeasurement;->-$$Nest$fputmReadOnlyCorrelationVectors(Landroid/location/GnssMeasurement;Ljava/util/Collection;)V

    .line 1882
    .end local v1    # "correlationVectorsArray":[Landroid/location/CorrelationVector;
    .end local v2    # "corrVecCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/location/CorrelationVector;>;"
    :cond_1
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1838
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurement$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurement;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssMeasurement;
    .locals 1
    .param p1, "i"    # I

    .line 1887
    new-array v0, p1, [Landroid/location/GnssMeasurement;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1838
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurement$1;->newArray(I)[Landroid/location/GnssMeasurement;

    move-result-object p1

    return-object p1
.end method
