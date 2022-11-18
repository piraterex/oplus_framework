.class public final Landroid/location/Geofence;
.super Ljava/lang/Object;
.source "Geofence.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/Geofence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mExpirationRealtimeMs:J

.field private final greylist-max-o mLatitude:D

.field private final greylist-max-o mLongitude:D

.field private final greylist-max-o mRadius:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Landroid/location/Geofence$1;

    invoke-direct {v0}, Landroid/location/Geofence$1;-><init>()V

    sput-object v0, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(DDFJ)V
    .locals 16
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # F
    .param p6, "expirationRealtimeMs"    # J

    .line 58
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-wide v4, -0x3fa9800000000000L    # -90.0

    const-wide v6, 0x4056800000000000L    # 90.0

    const-string v8, "latitude"

    move-wide/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 60
    const-wide v11, -0x3f99800000000000L    # -180.0

    const-wide v13, 0x4066800000000000L    # 180.0

    const-string v15, "latitude"

    move-wide/from16 v9, p3

    invoke-static/range {v9 .. v15}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 61
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "invalid radius: %f"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 63
    move-wide/from16 v2, p1

    iput-wide v2, v0, Landroid/location/Geofence;->mLatitude:D

    .line 64
    move-wide/from16 v4, p3

    iput-wide v4, v0, Landroid/location/Geofence;->mLongitude:D

    .line 65
    iput v1, v0, Landroid/location/Geofence;->mRadius:F

    .line 66
    move-wide/from16 v6, p6

    iput-wide v6, v0, Landroid/location/Geofence;->mExpirationRealtimeMs:J

    .line 67
    return-void
.end method

.method public static blacklist createCircle(DDFJ)Landroid/location/Geofence;
    .locals 9
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .param p4, "radius"    # F
    .param p5, "expirationRealtimeMs"    # J

    .line 55
    new-instance v8, Landroid/location/Geofence;

    move-object v0, v8

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/location/Geofence;-><init>(DDFJ)V

    return-object v8
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 125
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 126
    return v0

    .line 128
    :cond_0
    instance-of v1, p1, Landroid/location/Geofence;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 129
    return v2

    .line 131
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/location/Geofence;

    .line 132
    .local v1, "geofence":Landroid/location/Geofence;
    iget-wide v3, v1, Landroid/location/Geofence;->mLatitude:D

    iget-wide v5, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_2

    iget-wide v3, v1, Landroid/location/Geofence;->mLongitude:D

    iget-wide v5, p0, Landroid/location/Geofence;->mLongitude:D

    .line 133
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_2

    iget v3, v1, Landroid/location/Geofence;->mRadius:F

    iget v4, p0, Landroid/location/Geofence;->mRadius:F

    .line 134
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/location/Geofence;->mExpirationRealtimeMs:J

    iget-wide v5, v1, Landroid/location/Geofence;->mExpirationRealtimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 132
    :goto_0
    return v0
.end method

.method public greylist-max-o getLatitude()D
    .locals 2

    .line 70
    iget-wide v0, p0, Landroid/location/Geofence;->mLatitude:D

    return-wide v0
.end method

.method public greylist-max-o getLongitude()D
    .locals 2

    .line 74
    iget-wide v0, p0, Landroid/location/Geofence;->mLongitude:D

    return-wide v0
.end method

.method public greylist-max-o getRadius()F
    .locals 1

    .line 78
    iget v0, p0, Landroid/location/Geofence;->mRadius:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 140
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/location/Geofence;->mLongitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/Geofence;->mRadius:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isExpired()Z
    .locals 2

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/location/Geofence;->isExpired(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isExpired(J)Z
    .locals 2
    .param p1, "referenceRealtimeMs"    # J

    .line 89
    iget-wide v0, p0, Landroid/location/Geofence;->mExpirationRealtimeMs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Geofence[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/Geofence;->mLongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Geofence;->mRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-wide v1, p0, Landroid/location/Geofence;->mExpirationRealtimeMs:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 149
    invoke-virtual {p0}, Landroid/location/Geofence;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const-string v1, " expired"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 152
    :cond_0
    const-string v1, " expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-wide v1, p0, Landroid/location/Geofence;->mExpirationRealtimeMs:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 156
    :cond_1
    :goto_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 117
    iget-wide v0, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 118
    iget-wide v0, p0, Landroid/location/Geofence;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 119
    iget v0, p0, Landroid/location/Geofence;->mRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 120
    iget-wide v0, p0, Landroid/location/Geofence;->mExpirationRealtimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 121
    return-void
.end method
