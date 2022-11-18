.class public final Landroid/hardware/display/AmbientBrightnessDayStats;
.super Ljava/lang/Object;
.source "AmbientBrightnessDayStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mBucketBoundaries:[F

.field private final greylist-max-o mLocalDate:Ljava/time/LocalDate;

.field private final greylist-max-o mStats:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 124
    new-instance v0, Landroid/hardware/display/AmbientBrightnessDayStats$1;

    invoke-direct {v0}, Landroid/hardware/display/AmbientBrightnessDayStats$1;-><init>()V

    sput-object v0, Landroid/hardware/display/AmbientBrightnessDayStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    .line 122
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/display/AmbientBrightnessDayStats-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/AmbientBrightnessDayStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/time/LocalDate;[F)V
    .locals 1
    .param p1, "localDate"    # Ljava/time/LocalDate;
    .param p2, "bucketBoundaries"    # [F

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/display/AmbientBrightnessDayStats;-><init>(Ljava/time/LocalDate;[F[F)V

    .line 60
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/time/LocalDate;[F[F)V
    .locals 4
    .param p1, "localDate"    # Ljava/time/LocalDate;
    .param p2, "bucketBoundaries"    # [F
    .param p3, "stats"    # [F

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const-string v2, "bucketBoundaries"

    invoke-static {p2, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 76
    array-length v2, p2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    .line 79
    invoke-static {p2}, Landroid/hardware/display/AmbientBrightnessDayStats;->checkSorted([F)V

    .line 80
    if-nez p3, :cond_0

    .line 81
    array-length v0, p2

    new-array p3, v0, [F

    goto :goto_0

    .line 83
    :cond_0
    const-string/jumbo v2, "stats"

    invoke-static {p3, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 84
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_1

    .line 89
    :goto_0
    iput-object p1, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    .line 90
    iput-object p2, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    .line 91
    iput-object p3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    .line 92
    return-void

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bucket boundaries and stats must be of same size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bucket boundaries must contain at least 1 value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkSorted([F)V
    .locals 5
    .param p0, "values"    # [F

    .line 231
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 232
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x0

    aget v2, p0, v0

    .line 235
    .local v2, "prevValue":F
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 236
    aget v4, p0, v3

    cmpg-float v4, v2, v4

    if-gez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 237
    aget v2, p0, v3

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private greylist-max-o getBucketIndex(F)I
    .locals 6
    .param p1, "ambientBrightness"    # F

    .line 211
    iget-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 212
    const/4 v0, -0x1

    return v0

    .line 214
    :cond_0
    const/4 v1, 0x0

    .line 215
    .local v1, "low":I
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 216
    .local v0, "high":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 217
    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    .line 218
    .local v2, "mid":I
    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    aget v4, v3, v2

    cmpg-float v5, v4, p1

    if-gtz v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    aget v3, v3, v5

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 220
    return v2

    .line 221
    :cond_1
    cmpg-float v3, v4, p1

    if-gez v3, :cond_2

    .line 222
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    .line 223
    :cond_2
    cmpl-float v3, v4, p1

    if-lez v3, :cond_3

    .line 224
    add-int/lit8 v0, v2, -0x1

    .line 226
    .end local v2    # "mid":I
    :cond_3
    :goto_1
    goto :goto_0

    .line 227
    :cond_4
    return v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 140
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 141
    return v0

    .line 143
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 144
    return v1

    .line 146
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 147
    return v1

    .line 149
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/display/AmbientBrightnessDayStats;

    .line 150
    .local v2, "other":Landroid/hardware/display/AmbientBrightnessDayStats;
    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    iget-object v4, v2, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    iget-object v4, v2, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    iget-object v4, v2, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    .line 151
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 150
    :goto_0
    return v0
.end method

.method public whitelist getBucketBoundaries()[F
    .locals 1

    .line 115
    iget-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    return-object v0
.end method

.method public whitelist getLocalDate()Ljava/time/LocalDate;
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    return-object v0
.end method

.method public whitelist getStats()[F
    .locals 1

    .line 105
    iget-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 156
    const/16 v0, 0x1f

    .line 157
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 158
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    invoke-virtual {v3}, Ljava/time/LocalDate;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 159
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([F)I

    move-result v3

    add-int/2addr v1, v3

    .line 160
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([F)I

    move-result v3

    add-int/2addr v2, v3

    .line 161
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public greylist-max-o log(FF)V
    .locals 3
    .param p1, "ambientBrightness"    # F
    .param p2, "durationSec"    # F

    .line 204
    invoke-direct {p0, p1}, Landroid/hardware/display/AmbientBrightnessDayStats;->getBucketIndex(F)I

    move-result v0

    .line 205
    .local v0, "bucketIndex":I
    if-ltz v0, :cond_0

    .line 206
    iget-object v1, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    aget v2, v1, v0

    add-float/2addr v2, p2

    aput v2, v1, v0

    .line 208
    :cond_0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v0, "bucketBoundariesString":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v1, "statsString":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 170
    if-eqz v2, :cond_0

    .line 171
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_0
    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 175
    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 179
    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "} "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 190
    iget-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mLocalDate:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mBucketBoundaries:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 192
    iget-object v0, p0, Landroid/hardware/display/AmbientBrightnessDayStats;->mStats:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 193
    return-void
.end method
