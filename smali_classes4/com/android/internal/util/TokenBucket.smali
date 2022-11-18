.class public Lcom/android/internal/util/TokenBucket;
.super Ljava/lang/Object;
.source "TokenBucket.java"


# instance fields
.field private greylist-max-o mAvailable:I

.field private final greylist-max-o mCapacity:I

.field private final greylist-max-o mFillDelta:I

.field private greylist-max-o mLastFill:J


# direct methods
.method public constructor greylist-max-o <init>(II)V
    .locals 0
    .param p1, "deltaMs"    # I
    .param p2, "capacity"    # I

    .line 67
    invoke-direct {p0, p1, p2, p2}, Lcom/android/internal/util/TokenBucket;-><init>(III)V

    .line 68
    return-void
.end method

.method public constructor greylist-max-o <init>(III)V
    .locals 2
    .param p1, "deltaMs"    # I
    .param p2, "capacity"    # I
    .param p3, "tokens"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "deltaMs must be strictly positive"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mFillDelta:I

    .line 55
    const-string v0, "capacity must be strictly positive"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    .line 56
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 57
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->scaledTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    .line 58
    return-void
.end method

.method private greylist-max-o fill()V
    .locals 5

    .line 119
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->scaledTime()J

    move-result-wide v0

    .line 120
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 121
    .local v2, "diff":I
    iget v3, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    iget v4, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 122
    iput-wide v0, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    .line 123
    return-void
.end method

.method private greylist-max-o scaledTime()J
    .locals 4

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/android/internal/util/TokenBucket;->mFillDelta:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public greylist-max-o available()I
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->fill()V

    .line 85
    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    return v0
.end method

.method public greylist-max-o capacity()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    return v0
.end method

.method public greylist-max-o get(I)I
    .locals 2
    .param p1, "n"    # I

    .line 105
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->fill()V

    .line 106
    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 107
    return v0

    .line 109
    :cond_0
    iget v1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    if-le p1, v1, :cond_1

    .line 110
    iget v1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 111
    .local v1, "got":I
    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 112
    return v1

    .line 114
    .end local v1    # "got":I
    :cond_1
    sub-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 115
    return p1
.end method

.method public greylist-max-o get()Z
    .locals 2

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/util/TokenBucket;->get(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o has()Z
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->fill()V

    .line 91
    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o reset(I)V
    .locals 2
    .param p1, "tokens"    # I

    .line 72
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 73
    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 74
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->scaledTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    .line 75
    return-void
.end method
