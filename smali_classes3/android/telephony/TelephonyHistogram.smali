.class public final Landroid/telephony/TelephonyHistogram;
.super Ljava/lang/Object;
.source "TelephonyHistogram.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final greylist-max-o ABSENT:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o PRESENT:I = 0x1

.field private static final greylist-max-o RANGE_CALCULATION_COUNT:I = 0xa

.field public static final whitelist TELEPHONY_CATEGORY_RIL:I = 0x1


# instance fields
.field private greylist-max-o mAverageTimeMs:I

.field private final greylist-max-o mBucketCount:I

.field private final greylist-max-o mBucketCounters:[I

.field private final greylist-max-o mBucketEndPoints:[I

.field private final greylist-max-o mCategory:I

.field private final greylist-max-o mId:I

.field private greylist-max-o mInitialTimings:[I

.field private greylist-max-o mMaxTimeMs:I

.field private greylist-max-o mMinTimeMs:I

.field private greylist-max-o mSampleCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 260
    new-instance v0, Landroid/telephony/TelephonyHistogram$1;

    invoke-direct {v0}, Landroid/telephony/TelephonyHistogram$1;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyHistogram;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .locals 2
    .param p1, "category"    # I
    .param p2, "id"    # I
    .param p3, "bucketCount"    # I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    .line 83
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    .line 84
    iput p2, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    .line 85
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 87
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    .line 88
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 89
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 90
    iput p3, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    .line 91
    add-int/lit8 v0, p3, -0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    .line 92
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    .line 93
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid number of buckets"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 282
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 283
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 285
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    .line 286
    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    .line 287
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 288
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    .line 289
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 290
    return-void
.end method

.method public constructor whitelist <init>(Landroid/telephony/TelephonyHistogram;)V
    .locals 1
    .param p1, "th"    # Landroid/telephony/TelephonyHistogram;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getCategory()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    .line 97
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getId()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    .line 98
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getMinTime()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 99
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getMaxTime()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 100
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getAverageTime()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    .line 101
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getSampleCount()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 102
    invoke-direct {p1}, Landroid/telephony/TelephonyHistogram;->getInitialTimings()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 103
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getBucketCount()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    .line 104
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getBucketEndPoints()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    .line 105
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getBucketCounters()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    .line 106
    return-void
.end method

.method private greylist-max-o addToBucketCounter([I[II)V
    .locals 2
    .param p1, "bucketEndPoints"    # [I
    .param p2, "bucketCounters"    # [I
    .param p3, "time"    # I

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 173
    aget v1, p1, v0

    if-gt p3, v1, :cond_0

    .line 174
    aget v1, p2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v0

    .line 175
    return-void

    .line 172
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_1
    aget v1, p2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v0

    .line 179
    return-void
.end method

.method private greylist-max-o calculateBucketEndPoints([I)V
    .locals 4
    .param p1, "bucketEndPoints"    # [I

    .line 182
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    if-ge v0, v1, :cond_0

    .line 183
    iget v2, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    sub-int/2addr v3, v2

    mul-int/2addr v3, v0

    div-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 184
    .local v2, "endPt":I
    add-int/lit8 v1, v0, -0x1

    aput v2, p1, v1

    .line 182
    .end local v2    # "endPt":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private greylist-max-o getDeepCopyOfArray([I)[I
    .locals 3
    .param p1, "array"    # [I

    .line 165
    array-length v0, p1

    new-array v0, v0, [I

    .line 166
    .local v0, "clone":[I
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    return-object v0
.end method

.method private greylist-max-o getInitialTimings()[I
    .locals 1

    .line 133
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    return-object v0
.end method


# virtual methods
.method public whitelist addTimeTaken(I)V
    .locals 7
    .param p1, "time"    # I

    .line 197
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 211
    :cond_0
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    if-ge p1, v3, :cond_1

    .line 212
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 214
    :cond_1
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    if-le p1, v3, :cond_2

    .line 215
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 217
    :cond_2
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    int-to-long v3, v3

    int-to-long v5, v0

    mul-long/2addr v3, v5

    int-to-long v5, p1

    add-long/2addr v3, v5

    .line 218
    .local v3, "totalTime":J
    add-int/2addr v0, v2

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    int-to-long v5, v0

    div-long v5, v3, v5

    long-to-int v5, v5

    iput v5, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    .line 220
    if-ge v0, v1, :cond_3

    .line 221
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    sub-int/2addr v0, v2

    aput p1, v1, v0

    goto :goto_3

    .line 222
    :cond_3
    if-ne v0, v1, :cond_5

    .line 223
    iget-object v5, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    sub-int/2addr v0, v2

    aput p1, v5, v0

    .line 226
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyHistogram;->calculateBucketEndPoints([I)V

    .line 229
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 230
    iget-object v2, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    iget-object v5, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    iget-object v6, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    aget v6, v6, v0

    invoke-direct {p0, v2, v5, v6}, Landroid/telephony/TelephonyHistogram;->addToBucketCounter([I[II)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "j":I
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    goto :goto_3

    .line 234
    :cond_5
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    invoke-direct {p0, v0, v1, p1}, Landroid/telephony/TelephonyHistogram;->addToBucketCounter([I[II)V

    goto :goto_3

    .line 198
    .end local v3    # "totalTime":J
    :cond_6
    :goto_1
    if-nez v0, :cond_7

    .line 199
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 200
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 201
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    goto :goto_2

    .line 203
    :cond_7
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 205
    :goto_2
    iput v2, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 206
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 207
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    aput p1, v0, v1

    .line 208
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 209
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 238
    :goto_3
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAverageTime()I
    .locals 1

    .line 125
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    return v0
.end method

.method public whitelist getBucketCount()I
    .locals 1

    .line 137
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    return v0
.end method

.method public whitelist getBucketCounters()[I
    .locals 4

    .line 151
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 152
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [I

    .line 153
    .local v1, "tempEndPoints":[I
    new-array v0, v0, [I

    .line 154
    .local v0, "tempBucketCounters":[I
    invoke-direct {p0, v1}, Landroid/telephony/TelephonyHistogram;->calculateBucketEndPoints([I)V

    .line 155
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    if-ge v2, v3, :cond_0

    .line 156
    iget-object v3, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    aget v3, v3, v2

    invoke-direct {p0, v1, v0, v3}, Landroid/telephony/TelephonyHistogram;->addToBucketCounter([I[II)V

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v2    # "j":I
    :cond_0
    return-object v0

    .line 160
    .end local v0    # "tempBucketCounters":[I
    .end local v1    # "tempEndPoints":[I
    :cond_1
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyHistogram;->getDeepCopyOfArray([I)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBucketEndPoints()[I
    .locals 3

    .line 141
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 142
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    sub-int/2addr v0, v1

    new-array v0, v0, [I

    .line 143
    .local v0, "tempEndPoints":[I
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyHistogram;->calculateBucketEndPoints([I)V

    .line 144
    return-object v0

    .line 146
    .end local v0    # "tempEndPoints":[I
    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyHistogram;->getDeepCopyOfArray([I)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCategory()I
    .locals 1

    .line 109
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    return v0
.end method

.method public whitelist getId()I
    .locals 1

    .line 113
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    return v0
.end method

.method public whitelist getMaxTime()I
    .locals 1

    .line 121
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    return v0
.end method

.method public whitelist getMinTime()I
    .locals 1

    .line 117
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    return v0
.end method

.method public whitelist getSampleCount()I
    .locals 1

    .line 129
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Histogram id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Time(ms): min = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " avg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "basic":Ljava/lang/String;
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 246
    return-object v0

    .line 248
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, " Interval Endpoints:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 249
    .local v1, "intervals":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    array-length v3, v3

    const-string v4, " "

    if-ge v2, v3, :cond_1

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    .end local v2    # "i":I
    :cond_1
    const-string v2, " Interval counters:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    aget v5, v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 256
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 293
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    if-nez v0, :cond_0

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 302
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 305
    :goto_0
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 307
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 308
    return-void
.end method
