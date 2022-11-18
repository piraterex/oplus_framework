.class public final Landroid/location/provider/ProviderRequest;
.super Ljava/lang/Object;
.source "ProviderRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/ProviderRequest$Builder;,
        Landroid/location/provider/ProviderRequest$ChangedListener;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/provider/ProviderRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

.field public static final whitelist INTERVAL_DISABLED:J = 0x7fffffffffffffffL


# instance fields
.field private final blacklist mAdasGnssBypass:Z

.field private final blacklist mIntervalMillis:J

.field private final blacklist mLocationSettingsIgnored:Z

.field private final blacklist mLowPower:Z

.field private final blacklist mMaxUpdateDelayMillis:J

.field private final blacklist mQuality:I

.field private final blacklist mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 46
    new-instance v10, Landroid/location/provider/ProviderRequest;

    new-instance v9, Landroid/os/WorkSource;

    invoke-direct {v9}, Landroid/os/WorkSource;-><init>()V

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x66

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/location/provider/ProviderRequest;-><init>(JIJZZZLandroid/os/WorkSource;)V

    sput-object v10, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    .line 174
    new-instance v0, Landroid/location/provider/ProviderRequest$1;

    invoke-direct {v0}, Landroid/location/provider/ProviderRequest$1;-><init>()V

    sput-object v0, Landroid/location/provider/ProviderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JIJZZZLandroid/os/WorkSource;)V
    .locals 1
    .param p1, "intervalMillis"    # J
    .param p3, "quality"    # I
    .param p4, "maxUpdateDelayMillis"    # J
    .param p6, "lowPower"    # Z
    .param p7, "adasGnssBypass"    # Z
    .param p8, "locationSettingsIgnored"    # Z
    .param p9, "workSource"    # Landroid/os/WorkSource;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-wide p1, p0, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    .line 86
    iput p3, p0, Landroid/location/provider/ProviderRequest;->mQuality:I

    .line 87
    iput-wide p4, p0, Landroid/location/provider/ProviderRequest;->mMaxUpdateDelayMillis:J

    .line 88
    iput-boolean p6, p0, Landroid/location/provider/ProviderRequest;->mLowPower:Z

    .line 89
    iput-boolean p7, p0, Landroid/location/provider/ProviderRequest;->mAdasGnssBypass:Z

    .line 90
    iput-boolean p8, p0, Landroid/location/provider/ProviderRequest;->mLocationSettingsIgnored:Z

    .line 91
    invoke-static {p9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    iput-object v0, p0, Landroid/location/provider/ProviderRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 92
    return-void
.end method

.method synthetic constructor blacklist <init>(JIJZZZLandroid/os/WorkSource;Landroid/location/provider/ProviderRequest-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/location/provider/ProviderRequest;-><init>(JIJZZZLandroid/os/WorkSource;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 218
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 219
    return v0

    .line 221
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 225
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/location/provider/ProviderRequest;

    .line 226
    .local v2, "that":Landroid/location/provider/ProviderRequest;
    iget-wide v3, p0, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    .line 227
    iget-wide v3, v2, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 229
    :cond_3
    iget-wide v5, v2, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget v3, p0, Landroid/location/provider/ProviderRequest;->mQuality:I

    iget v4, v2, Landroid/location/provider/ProviderRequest;->mQuality:I

    if-ne v3, v4, :cond_4

    iget-wide v3, p0, Landroid/location/provider/ProviderRequest;->mMaxUpdateDelayMillis:J

    iget-wide v5, v2, Landroid/location/provider/ProviderRequest;->mMaxUpdateDelayMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-boolean v3, p0, Landroid/location/provider/ProviderRequest;->mLowPower:Z

    iget-boolean v4, v2, Landroid/location/provider/ProviderRequest;->mLowPower:Z

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Landroid/location/provider/ProviderRequest;->mAdasGnssBypass:Z

    iget-boolean v4, v2, Landroid/location/provider/ProviderRequest;->mAdasGnssBypass:Z

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Landroid/location/provider/ProviderRequest;->mLocationSettingsIgnored:Z

    iget-boolean v4, v2, Landroid/location/provider/ProviderRequest;->mLocationSettingsIgnored:Z

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/location/provider/ProviderRequest;->mWorkSource:Landroid/os/WorkSource;

    iget-object v4, v2, Landroid/location/provider/ProviderRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 235
    invoke-virtual {v3, v4}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    .line 229
    :goto_1
    return v0

    .line 222
    .end local v2    # "that":Landroid/location/provider/ProviderRequest;
    :cond_5
    :goto_2
    return v1
.end method

.method public whitelist getIntervalMillis()J
    .locals 2

    .line 107
    iget-wide v0, p0, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    return-wide v0
.end method

.method public whitelist getMaxUpdateDelayMillis()J
    .locals 2

    .line 127
    iget-wide v0, p0, Landroid/location/provider/ProviderRequest;->mMaxUpdateDelayMillis:J

    return-wide v0
.end method

.method public whitelist getQuality()I
    .locals 1

    .line 116
    iget v0, p0, Landroid/location/provider/ProviderRequest;->mQuality:I

    return v0
.end method

.method public whitelist getWorkSource()Landroid/os/WorkSource;
    .locals 1

    .line 171
    iget-object v0, p0, Landroid/location/provider/ProviderRequest;->mWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 241
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/provider/ProviderRequest;->mQuality:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/location/provider/ProviderRequest;->mWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isActive()Z
    .locals 4

    .line 99
    iget-wide v0, p0, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isAdasGnssBypass()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Landroid/location/provider/ProviderRequest;->mAdasGnssBypass:Z

    return v0
.end method

.method public blacklist isBypass()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Landroid/location/provider/ProviderRequest;->mAdasGnssBypass:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/location/provider/ProviderRequest;->mLocationSettingsIgnored:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist isLocationSettingsIgnored()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Landroid/location/provider/ProviderRequest;->mLocationSettingsIgnored:Z

    return v0
.end method

.method public whitelist isLowPower()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Landroid/location/provider/ProviderRequest;->mLowPower:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "ProviderRequest["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-wide v1, p0, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    .line 249
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-wide v1, p0, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 251
    iget v1, p0, Landroid/location/provider/ProviderRequest;->mQuality:I

    const/16 v2, 0x66

    if-eq v1, v2, :cond_1

    .line 252
    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 253
    const-string v1, ", HIGH_ACCURACY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 254
    :cond_0
    const/16 v2, 0x68

    if-ne v1, v2, :cond_1

    .line 255
    const-string v1, ", LOW_POWER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_1
    :goto_0
    iget-wide v1, p0, Landroid/location/provider/ProviderRequest;->mMaxUpdateDelayMillis:J

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    iget-wide v3, p0, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 259
    const-string v1, ", maxUpdateDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-wide v1, p0, Landroid/location/provider/ProviderRequest;->mMaxUpdateDelayMillis:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 262
    :cond_2
    iget-boolean v1, p0, Landroid/location/provider/ProviderRequest;->mLowPower:Z

    if-eqz v1, :cond_3

    .line 263
    const-string v1, ", lowPower"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_3
    iget-boolean v1, p0, Landroid/location/provider/ProviderRequest;->mAdasGnssBypass:Z

    if-eqz v1, :cond_4

    .line 266
    const-string v1, ", adasGnssBypass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_4
    iget-boolean v1, p0, Landroid/location/provider/ProviderRequest;->mLocationSettingsIgnored:Z

    if-eqz v1, :cond_5

    .line 269
    const-string v1, ", settingsBypass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_5
    iget-object v1, p0, Landroid/location/provider/ProviderRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 272
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/provider/ProviderRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 275
    :cond_6
    const-string v1, "OFF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_7
    :goto_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 205
    iget-wide v0, p0, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 206
    iget-wide v0, p0, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 207
    iget v0, p0, Landroid/location/provider/ProviderRequest;->mQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-wide v0, p0, Landroid/location/provider/ProviderRequest;->mMaxUpdateDelayMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 209
    iget-boolean v0, p0, Landroid/location/provider/ProviderRequest;->mLowPower:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 210
    iget-boolean v0, p0, Landroid/location/provider/ProviderRequest;->mAdasGnssBypass:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 211
    iget-boolean v0, p0, Landroid/location/provider/ProviderRequest;->mLocationSettingsIgnored:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 212
    iget-object v0, p0, Landroid/location/provider/ProviderRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 214
    :cond_0
    return-void
.end method
