.class public Lcom/android/internal/power/MeasuredEnergyStats;
.super Ljava/lang/Object;
.source "MeasuredEnergyStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/power/MeasuredEnergyStats$Config;,
        Lcom/android/internal/power/MeasuredEnergyStats$StandardPowerBucket;
    }
.end annotation


# static fields
.field private static final blacklist INVALID_STATE:I = -0x1

.field public static final blacklist NUMBER_STANDARD_POWER_BUCKETS:I = 0x8

.field public static final blacklist POWER_BUCKET_BLUETOOTH:I = 0x5

.field public static final blacklist POWER_BUCKET_CPU:I = 0x3

.field public static final blacklist POWER_BUCKET_GNSS:I = 0x6

.field public static final blacklist POWER_BUCKET_MOBILE_RADIO:I = 0x7

.field public static final blacklist POWER_BUCKET_SCREEN_DOZE:I = 0x1

.field public static final blacklist POWER_BUCKET_SCREEN_ON:I = 0x0

.field public static final blacklist POWER_BUCKET_SCREEN_OTHER:I = 0x2

.field public static final blacklist POWER_BUCKET_UNKNOWN:I = -0x1

.field public static final blacklist POWER_BUCKET_WIFI:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "MeasuredEnergyStats"


# instance fields
.field private final blacklist mAccumulatedChargeMicroCoulomb:[J

.field private blacklist mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

.field private final blacklist mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

.field private blacklist mState:I

.field private blacklist mStateChangeTimestampMs:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smindexToCustomBucket(I)I
    .locals 0

    invoke-static {p0}, Lcom/android/internal/power/MeasuredEnergyStats;->indexToCustomBucket(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisValidStandardBucket(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/internal/power/MeasuredEnergyStats;->isValidStandardBucket(I)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/power/MeasuredEnergyStats$Config;)V
    .locals 5
    .param p1, "config"    # Lcom/android/internal/power/MeasuredEnergyStats$Config;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mState:I

    .line 246
    iput-object p1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    .line 247
    invoke-static {p1}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/MeasuredEnergyStats$Config;)I

    move-result v0

    .line 248
    .local v0, "numTotalBuckets":I
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    .line 251
    const/4 v1, 0x0

    .local v1, "stdBucket":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-static {v2}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$fgetmSupportedStandardBuckets(Lcom/android/internal/power/MeasuredEnergyStats$Config;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    const-wide/16 v3, -0x1

    aput-wide v3, v2, v1

    .line 251
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v1    # "stdBucket":I
    :cond_1
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/power/MeasuredEnergyStats$Config;Landroid/os/Parcel;)V
    .locals 4
    .param p1, "config"    # Lcom/android/internal/power/MeasuredEnergyStats$Config;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mState:I

    .line 271
    iput-object p1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    .local v0, "size":I
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    .line 275
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readLongArray([J)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    new-array v1, v0, [Lcom/android/internal/os/LongMultiStateCounter;

    iput-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    .line 278
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    sget-object v3, Lcom/android/internal/os/LongMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 281
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/LongMultiStateCounter;

    aput-object v3, v2, v1

    .line 278
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_1
    goto :goto_1

    .line 285
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    .line 287
    :goto_1
    return-void
.end method

.method private static blacklist checkValidStandardBucket(I)V
    .locals 3
    .param p0, "bucket"    # I

    .line 682
    invoke-static {p0}, Lcom/android/internal/power/MeasuredEnergyStats;->isValidStandardBucket(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    return-void

    .line 683
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal StandardPowerBucket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist containsInterestingData()Z
    .locals 5

    .line 578
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 579
    aget-wide v1, v1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 578
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 581
    .end local v0    # "index":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist createAndReadSummaryFromParcel(Lcom/android/internal/power/MeasuredEnergyStats$Config;Landroid/os/Parcel;)Lcom/android/internal/power/MeasuredEnergyStats;
    .locals 7
    .param p0, "config"    # Lcom/android/internal/power/MeasuredEnergyStats$Config;
    .param p1, "in"    # Landroid/os/Parcel;

    .line 545
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 547
    .local v0, "arraySize":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 549
    :cond_0
    if-nez p0, :cond_1

    .line 551
    new-instance v2, Lcom/android/internal/power/MeasuredEnergyStats;

    new-instance v3, Lcom/android/internal/power/MeasuredEnergyStats$Config;

    new-array v4, v0, [Z

    const/4 v5, 0x0

    new-array v5, v5, [I

    const-string v6, ""

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/android/internal/power/MeasuredEnergyStats$Config;-><init>([Z[Ljava/lang/String;[I[Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/power/MeasuredEnergyStats;-><init>(Lcom/android/internal/power/MeasuredEnergyStats$Config;)V

    .line 553
    .local v2, "mes":Lcom/android/internal/power/MeasuredEnergyStats;
    invoke-direct {v2, p1}, Lcom/android/internal/power/MeasuredEnergyStats;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 554
    return-object v1

    .line 557
    .end local v2    # "mes":Lcom/android/internal/power/MeasuredEnergyStats;
    :cond_1
    invoke-static {p0}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/MeasuredEnergyStats$Config;)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size of MeasuredEnergyStats parcel ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not match config ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 559
    invoke-static {p0}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/MeasuredEnergyStats$Config;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 558
    const-string v3, "MeasuredEnergyStats"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    new-instance v2, Lcom/android/internal/power/MeasuredEnergyStats;

    invoke-direct {v2, p0}, Lcom/android/internal/power/MeasuredEnergyStats;-><init>(Lcom/android/internal/power/MeasuredEnergyStats$Config;)V

    .line 562
    .restart local v2    # "mes":Lcom/android/internal/power/MeasuredEnergyStats;
    invoke-direct {v2, p1}, Lcom/android/internal/power/MeasuredEnergyStats;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 563
    return-object v1

    .line 566
    .end local v2    # "mes":Lcom/android/internal/power/MeasuredEnergyStats;
    :cond_2
    new-instance v2, Lcom/android/internal/power/MeasuredEnergyStats;

    invoke-direct {v2, p0}, Lcom/android/internal/power/MeasuredEnergyStats;-><init>(Lcom/android/internal/power/MeasuredEnergyStats$Config;)V

    .line 567
    .local v2, "stats":Lcom/android/internal/power/MeasuredEnergyStats;
    invoke-direct {v2, p1}, Lcom/android/internal/power/MeasuredEnergyStats;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 568
    invoke-direct {v2}, Lcom/android/internal/power/MeasuredEnergyStats;->containsInterestingData()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 569
    return-object v2

    .line 572
    :cond_3
    return-object v1
.end method

.method public static blacklist createFromParcel(Lcom/android/internal/power/MeasuredEnergyStats$Config;Landroid/os/Parcel;)Lcom/android/internal/power/MeasuredEnergyStats;
    .locals 1
    .param p0, "config"    # Lcom/android/internal/power/MeasuredEnergyStats$Config;
    .param p1, "in"    # Landroid/os/Parcel;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x0

    return-object v0

    .line 266
    :cond_0
    new-instance v0, Lcom/android/internal/power/MeasuredEnergyStats;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/power/MeasuredEnergyStats;-><init>(Lcom/android/internal/power/MeasuredEnergyStats$Config;Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static blacklist customBucketToIndex(I)I
    .locals 1
    .param p0, "customBucket"    # I

    .line 674
    add-int/lit8 v0, p0, 0x8

    return v0
.end method

.method public static blacklist getDisplayPowerBucket(I)I
    .locals 1
    .param p0, "screenState"    # I

    .line 520
    invoke-static {p0}, Landroid/view/Display;->isOnState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    const/4 v0, 0x0

    return v0

    .line 523
    :cond_0
    invoke-static {p0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    const/4 v0, 0x1

    return v0

    .line 526
    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method private static blacklist indexToCustomBucket(I)I
    .locals 1
    .param p0, "index"    # I

    .line 678
    add-int/lit8 v0, p0, -0x8

    return v0
.end method

.method private blacklist isIndexSupported(I)Z
    .locals 4
    .param p1, "index"    # I

    .line 632
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v0, v0, p1

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isValidStandardBucket(I)Z
    .locals 1
    .param p0, "bucket"    # I

    .line 688
    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 319
    .local v0, "numWrittenEntries":I
    const/4 v1, 0x0

    .local v1, "entry":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 321
    .local v2, "index":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 322
    .local v3, "chargeUC":J
    const/4 v5, 0x0

    .line 323
    .local v5, "multiStateCounter":Lcom/android/internal/os/LongMultiStateCounter;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 324
    sget-object v6, Lcom/android/internal/os/LongMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Lcom/android/internal/os/LongMultiStateCounter;

    .line 325
    iget-object v6, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    if-eqz v6, :cond_0

    .line 326
    invoke-virtual {v5}, Lcom/android/internal/os/LongMultiStateCounter;->getStateCount()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-virtual {v7}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->getStateNames()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-eq v6, v7, :cond_1

    .line 327
    :cond_0
    const/4 v5, 0x0

    .line 331
    :cond_1
    iget-object v6, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 332
    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/power/MeasuredEnergyStats;->setValueIfSupported(IJ)V

    .line 333
    if-eqz v5, :cond_3

    .line 334
    iget-object v6, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-nez v6, :cond_2

    .line 335
    iget-object v6, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v6, v6

    new-array v6, v6, [Lcom/android/internal/os/LongMultiStateCounter;

    iput-object v6, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    .line 338
    :cond_2
    iget-object v6, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aput-object v5, v6, v2

    .line 319
    .end local v2    # "index":I
    .end local v3    # "chargeUC":J
    .end local v5    # "multiStateCounter":Lcom/android/internal/os/LongMultiStateCounter;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    .end local v1    # "entry":I
    :cond_4
    return-void
.end method

.method private blacklist reset()V
    .locals 4

    .line 600
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-static {v0}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/MeasuredEnergyStats$Config;)I

    move-result v0

    .line 601
    .local v0, "numIndices":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 602
    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/power/MeasuredEnergyStats;->setValueIfSupported(IJ)V

    .line 603
    iget-object v2, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-eqz v2, :cond_0

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 605
    invoke-virtual {v2}, Lcom/android/internal/os/LongMultiStateCounter;->reset()V

    .line 601
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    .end local v1    # "index":I
    :cond_1
    return-void
.end method

.method public static blacklist resetIfNotNull(Lcom/android/internal/power/MeasuredEnergyStats;)V
    .locals 0
    .param p0, "stats"    # Lcom/android/internal/power/MeasuredEnergyStats;

    .line 612
    if-eqz p0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/power/MeasuredEnergyStats;->reset()V

    .line 613
    :cond_0
    return-void
.end method

.method private blacklist setValueIfSupported(IJ)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 617
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v1, v0, p1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 618
    aput-wide p2, v0, p1

    .line 620
    :cond_0
    return-void
.end method

.method private blacklist updateEntry(IJJ)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "chargeDeltaUC"    # J
    .param p4, "timestampMs"    # J

    .line 411
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v1, v0, p1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    .line 412
    add-long/2addr v1, p2

    aput-wide v1, v0, p1

    .line 413
    iget v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-virtual {v0, p1}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->isSupportedMultiStateBucket(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 414
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v0, v0

    new-array v0, v0, [Lcom/android/internal/os/LongMultiStateCounter;

    iput-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aget-object v0, v0, p1

    .line 420
    .local v0, "counter":Lcom/android/internal/os/LongMultiStateCounter;
    if-nez v0, :cond_1

    .line 421
    new-instance v1, Lcom/android/internal/os/LongMultiStateCounter;

    iget-object v2, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-static {v2}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$fgetmStateNames(Lcom/android/internal/power/MeasuredEnergyStats$Config;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Lcom/android/internal/os/LongMultiStateCounter;-><init>(I)V

    move-object v0, v1

    .line 422
    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aput-object v0, v1, p1

    .line 423
    iget v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mState:I

    iget-wide v5, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mStateChangeTimestampMs:J

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/internal/os/LongMultiStateCounter;->setState(IJ)V

    .line 424
    iget-wide v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mStateChangeTimestampMs:J

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v1, v1, p1

    invoke-virtual {v0, v1, v2, p4, p5}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    .line 427
    .end local v0    # "counter":Lcom/android/internal/os/LongMultiStateCounter;
    goto :goto_0

    .line 429
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to unavailable bucket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    .line 430
    invoke-static {v1, p1}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$mgetBucketName(Lcom/android/internal/power/MeasuredEnergyStats$Config;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " whose value was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v1, v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    const-string v1, "MeasuredEnergyStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist writeSummaryToParcel(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "out"    # Landroid/os/Parcel;

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 352
    .local v0, "posOfNumWrittenEntries":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    const/4 v2, 0x0

    .line 355
    .local v2, "numWrittenEntries":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 356
    aget-wide v4, v4, v3

    .line 357
    .local v4, "charge":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_0

    goto :goto_2

    .line 359
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 361
    iget-object v6, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-eqz v6, :cond_1

    aget-object v6, v6, v3

    if-eqz v6, :cond_1

    .line 363
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 364
    iget-object v6, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aget-object v6, v6, v3

    invoke-virtual {v6, p1, v1}, Lcom/android/internal/os/LongMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 366
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 368
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 355
    .end local v4    # "charge":J
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 370
    .end local v3    # "index":I
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 371
    .local v1, "currPos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 372
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 374
    return-void
.end method

.method public static blacklist writeSummaryToParcel(Lcom/android/internal/power/MeasuredEnergyStats;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "stats"    # Lcom/android/internal/power/MeasuredEnergyStats;
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 590
    if-nez p0, :cond_0

    .line 591
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-static {v0}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/MeasuredEnergyStats$Config;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    invoke-direct {p0, p1}, Lcom/android/internal/power/MeasuredEnergyStats;->writeSummaryToParcel(Landroid/os/Parcel;)V

    .line 596
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 637
    const-string v0, "   "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 639
    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-static {v1, v0}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$mgetBucketName(Lcom/android/internal/power/MeasuredEnergyStats$Config;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 640
    const-string v1, " : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 641
    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v1, v1, v0

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 642
    invoke-direct {p0, v0}, Lcom/android/internal/power/MeasuredEnergyStats;->isIndexSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 643
    const-string v1, " (unsupported)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 645
    :cond_0
    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-eqz v1, :cond_3

    .line 646
    aget-object v1, v1, v0

    .line 648
    .local v1, "counter":Lcom/android/internal/os/LongMultiStateCounter;
    if-eqz v1, :cond_3

    .line 649
    const-string v2, " ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 650
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-static {v3}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$fgetmStateNames(Lcom/android/internal/power/MeasuredEnergyStats$Config;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 651
    if-eqz v2, :cond_1

    .line 652
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 654
    :cond_1
    iget-object v3, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-static {v3}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$fgetmStateNames(Lcom/android/internal/power/MeasuredEnergyStats$Config;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 655
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v1, v2}, Lcom/android/internal/os/LongMultiStateCounter;->getCount(I)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 650
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 658
    .end local v2    # "i":I
    :cond_2
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 661
    .end local v1    # "counter":Lcom/android/internal/os/LongMultiStateCounter;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_4

    .line 662
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 665
    .end local v0    # "index":I
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 666
    return-void
.end method

.method public blacklist getAccumulatedCustomBucketCharge(I)J
    .locals 2
    .param p1, "customBucket"    # I

    .line 499
    invoke-virtual {p0, p1}, Lcom/android/internal/power/MeasuredEnergyStats;->isValidCustomBucket(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    const-wide/16 v0, -0x1

    return-wide v0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    invoke-static {p1}, Lcom/android/internal/power/MeasuredEnergyStats;->customBucketToIndex(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getAccumulatedCustomBucketCharges()[J
    .locals 4

    .line 509
    invoke-virtual {p0}, Lcom/android/internal/power/MeasuredEnergyStats;->getNumberCustomPowerBuckets()I

    move-result v0

    new-array v0, v0, [J

    .line 510
    .local v0, "charges":[J
    const/4 v1, 0x0

    .local v1, "bucket":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    invoke-static {v1}, Lcom/android/internal/power/MeasuredEnergyStats;->customBucketToIndex(I)I

    move-result v3

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 510
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    .end local v1    # "bucket":I
    :cond_0
    return-object v0
.end method

.method public blacklist getAccumulatedStandardBucketCharge(I)J
    .locals 2
    .param p1, "bucket"    # I

    .line 468
    invoke-static {p1}, Lcom/android/internal/power/MeasuredEnergyStats;->checkValidStandardBucket(I)V

    .line 469
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public blacklist getAccumulatedStandardBucketCharge(II)J
    .locals 3
    .param p1, "bucket"    # I
    .param p2, "state"    # I

    .line 479
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-virtual {v0, p1}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->isSupportedMultiStateBucket(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    const-wide/16 v0, -0x1

    return-wide v0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    .line 483
    return-wide v1

    .line 485
    :cond_1
    aget-object v0, v0, p1

    .line 486
    .local v0, "counter":Lcom/android/internal/os/LongMultiStateCounter;
    if-nez v0, :cond_2

    .line 487
    return-wide v1

    .line 489
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/internal/os/LongMultiStateCounter;->getCount(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public blacklist getNumberCustomPowerBuckets()I
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x8

    return v0
.end method

.method public blacklist isStandardBucketSupported(I)Z
    .locals 1
    .param p1, "bucket"    # I

    .line 627
    invoke-static {p1}, Lcom/android/internal/power/MeasuredEnergyStats;->checkValidStandardBucket(I)V

    .line 628
    invoke-direct {p0, p1}, Lcom/android/internal/power/MeasuredEnergyStats;->isIndexSupported(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isValidCustomBucket(I)Z
    .locals 2
    .param p1, "customBucket"    # I

    .line 694
    if-ltz p1, :cond_0

    .line 695
    invoke-static {p1}, Lcom/android/internal/power/MeasuredEnergyStats;->customBucketToIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 694
    :goto_0
    return v0
.end method

.method public blacklist setState(IJ)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "timestampMs"    # J

    .line 443
    iput p1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mState:I

    .line 444
    iput-wide p2, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mStateChangeTimestampMs:J

    .line 445
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v0, v0

    new-array v0, v0, [Lcom/android/internal/os/LongMultiStateCounter;

    iput-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    .line 449
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 450
    aget-object v1, v1, v0

    .line 451
    .local v1, "counter":Lcom/android/internal/os/LongMultiStateCounter;
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-virtual {v2, v0}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->isSupportedMultiStateBucket(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 452
    new-instance v2, Lcom/android/internal/os/LongMultiStateCounter;

    iget-object v3, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-static {v3}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$fgetmStateNames(Lcom/android/internal/power/MeasuredEnergyStats$Config;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    invoke-direct {v2, v3}, Lcom/android/internal/os/LongMultiStateCounter;-><init>(I)V

    move-object v1, v2

    .line 453
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, p2, p3}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    .line 454
    iget-object v2, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aput-object v1, v2, v0

    .line 456
    :cond_1
    if-eqz v1, :cond_2

    .line 457
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/LongMultiStateCounter;->setState(IJ)V

    .line 449
    .end local v1    # "counter":Lcom/android/internal/os/LongMultiStateCounter;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public blacklist updateCustomBucket(IJ)V
    .locals 6
    .param p1, "customBucket"    # I
    .param p2, "chargeDeltaUC"    # J

    .line 393
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/power/MeasuredEnergyStats;->updateCustomBucket(IJJ)V

    .line 394
    return-void
.end method

.method public blacklist updateCustomBucket(IJJ)V
    .locals 8
    .param p1, "customBucket"    # I
    .param p2, "chargeDeltaUC"    # J
    .param p4, "timestampMs"    # J

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/internal/power/MeasuredEnergyStats;->isValidCustomBucket(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to update invalid custom bucket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeasuredEnergyStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void

    .line 405
    :cond_0
    invoke-static {p1}, Lcom/android/internal/power/MeasuredEnergyStats;->customBucketToIndex(I)I

    move-result v0

    .line 406
    .local v0, "index":I
    move-object v2, p0

    move v3, v0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/power/MeasuredEnergyStats;->updateEntry(IJJ)V

    .line 407
    return-void
.end method

.method public blacklist updateStandardBucket(IJ)V
    .locals 6
    .param p1, "bucket"    # I
    .param p2, "chargeDeltaUC"    # J

    .line 378
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/power/MeasuredEnergyStats;->updateStandardBucket(IJJ)V

    .line 379
    return-void
.end method

.method public blacklist updateStandardBucket(IJJ)V
    .locals 0
    .param p1, "bucket"    # I
    .param p2, "chargeDeltaUC"    # J
    .param p4, "timestampMs"    # J

    .line 387
    invoke-static {p1}, Lcom/android/internal/power/MeasuredEnergyStats;->checkValidStandardBucket(I)V

    .line 388
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/power/MeasuredEnergyStats;->updateEntry(IJJ)V

    .line 389
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;

    .line 291
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 293
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 294
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 295
    iget-object v2, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 296
    .local v5, "counter":Lcom/android/internal/os/LongMultiStateCounter;
    if-eqz v5, :cond_0

    .line 297
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 298
    invoke-virtual {v5, p1, v1}, Lcom/android/internal/os/LongMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 300
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 295
    .end local v5    # "counter":Lcom/android/internal/os/LongMultiStateCounter;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 306
    :cond_2
    return-void
.end method
