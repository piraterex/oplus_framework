.class public final Landroid/app/usage/UsageStats;
.super Ljava/lang/Object;
.source "UsageStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageStats$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mActivities:Landroid/util/SparseIntArray;

.field public greylist-max-o mAppLaunchCount:I

.field public greylist-max-p mBeginTimeStamp:J

.field public greylist-max-o mChooserCounts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public blacklist mChooserCountsObfuscated:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-p mEndTimeStamp:J

.field public blacklist mErrorCount:I

.field public blacklist mForegroundServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public greylist mLastEvent:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist mLastTimeComponentUsed:J

.field public blacklist mLastTimeForegroundServiceUsed:J

.field public greylist-max-p mLastTimeUsed:J

.field public blacklist mLastTimeVisible:J

.field public greylist mLaunchCount:I

.field public greylist-max-p mPackageName:Ljava/lang/String;

.field public blacklist mPackageToken:I

.field public blacklist mTotalTimeForegroundServiceUsed:J

.field public greylist mTotalTimeInForeground:J

.field public blacklist mTotalTimeVisible:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 742
    new-instance v0, Landroid/app/usage/UsageStats$1;

    invoke-direct {v0}, Landroid/app/usage/UsageStats$1;-><init>()V

    sput-object v0, Landroid/app/usage/UsageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/usage/UsageStats;->mPackageToken:I

    .line 153
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    .line 161
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    .line 176
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 181
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    .line 188
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/usage/UsageStats;)V
    .locals 2
    .param p1, "stats"    # Landroid/app/usage/UsageStats;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/usage/UsageStats;->mPackageToken:I

    .line 153
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    .line 161
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    .line 176
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 181
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    .line 191
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 192
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    .line 193
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 194
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 195
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 196
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    .line 197
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 198
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 199
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    .line 200
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 201
    iget v0, p1, Landroid/app/usage/UsageStats;->mLaunchCount:I

    iput v0, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    .line 202
    iget v0, p1, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    iput v0, p0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 203
    iget v0, p1, Landroid/app/usage/UsageStats;->mLastEvent:I

    iput v0, p0, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 204
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    .line 205
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    .line 206
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 209
    iget v0, p1, Landroid/app/usage/UsageStats;->mErrorCount:I

    iput v0, p0, Landroid/app/usage/UsageStats;->mErrorCount:I

    .line 211
    return-void
.end method

.method private blacklist anyForegroundServiceStarted()Z
    .locals 1

    .line 453
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist eventMapToBundle(Landroid/util/ArrayMap;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 728
    .local p1, "eventMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 729
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 730
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 733
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 734
    goto :goto_1

    .line 737
    :cond_0
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 730
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 739
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method private blacklist hasForegroundActivity()Z
    .locals 4

    .line 423
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 424
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 425
    iget-object v2, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 426
    return v3

    .line 424
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist hasVisibleActivity()Z
    .locals 5

    .line 437
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 438
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 439
    iget-object v2, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 440
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    goto :goto_1

    .line 438
    .end local v2    # "type":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    .restart local v2    # "type":I
    :cond_1
    :goto_1
    return v3

    .line 445
    .end local v1    # "i":I
    .end local v2    # "type":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist incrementServiceTimeUsed(J)V
    .locals 4
    .param p1, "timeStamp"    # J

    .line 484
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 485
    iget-wide v2, p0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    sub-long v0, p1, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 487
    iput-wide p1, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 489
    :cond_0
    return-void
.end method

.method private blacklist incrementTimeUsed(J)V
    .locals 4
    .param p1, "timeStamp"    # J

    .line 461
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 462
    iget-wide v2, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    sub-long v0, p1, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 463
    iput-wide p1, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 465
    :cond_0
    return-void
.end method

.method private blacklist incrementTimeVisible(J)V
    .locals 4
    .param p1, "timeStamp"    # J

    .line 472
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 473
    iget-wide v2, p0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    sub-long v0, p1, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    .line 474
    iput-wide p1, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 476
    :cond_0
    return-void
.end method

.method private blacklist mergeEventMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 347
    .local p1, "left":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p2, "right":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 348
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 349
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 350
    .local v2, "className":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 351
    .local v3, "event":Ljava/lang/Integer;
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 354
    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "event":Ljava/lang/Integer;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private blacklist mergeEventMap(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 6
    .param p1, "left"    # Landroid/util/SparseIntArray;
    .param p2, "right"    # Landroid/util/SparseIntArray;

    .line 333
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 334
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 335
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 336
    .local v2, "instanceId":I
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 337
    .local v3, "event":I
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    .line 338
    .local v4, "index":I
    if-ltz v4, :cond_0

    .line 339
    invoke-virtual {p1, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 341
    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 334
    .end local v2    # "instanceId":I
    .end local v3    # "event":I
    .end local v4    # "index":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private blacklist updateActivity(Ljava/lang/String;JII)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J
    .param p4, "eventType"    # I
    .param p5, "instanceId"    # I

    .line 500
    const/4 v0, 0x1

    if-eq p4, v0, :cond_0

    const/4 v0, 0x2

    if-eq p4, v0, :cond_0

    const/16 v0, 0x17

    if-eq p4, v0, :cond_0

    const/16 v0, 0x18

    if-eq p4, v0, :cond_0

    .line 504
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 509
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 510
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 511
    .local v1, "lastEvent":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 517
    :pswitch_0
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeVisible(J)V

    .line 518
    goto :goto_0

    .line 513
    :pswitch_1
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeUsed(J)V

    .line 514
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeVisible(J)V

    .line 525
    .end local v1    # "lastEvent":I
    :cond_1
    :goto_0
    sparse-switch p4, :sswitch_data_0

    goto :goto_2

    .line 547
    :sswitch_0
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 548
    goto :goto_2

    .line 538
    :sswitch_1
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasVisibleActivity()Z

    move-result v1

    if-nez v1, :cond_2

    .line 540
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 542
    :cond_2
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p5, p4}, Landroid/util/SparseIntArray;->put(II)V

    .line 543
    goto :goto_2

    .line 527
    :sswitch_2
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasVisibleActivity()Z

    move-result v1

    if-nez v1, :cond_3

    .line 529
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 530
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    goto :goto_1

    .line 531
    :cond_3
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasForegroundActivity()Z

    move-result v1

    if-nez v1, :cond_4

    .line 533
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 535
    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p5, p4}, Landroid/util/SparseIntArray;->put(II)V

    .line 536
    nop

    .line 552
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist updateForegroundService(Ljava/lang/String;JI)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J
    .param p4, "eventType"    # I

    .line 562
    const/16 v0, 0x14

    if-eq p4, v0, :cond_0

    const/16 v0, 0x13

    if-eq p4, v0, :cond_0

    .line 564
    return-void

    .line 566
    :cond_0
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 568
    .local v0, "lastEvent":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 572
    :pswitch_1
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementServiceTimeUsed(J)V

    .line 580
    :cond_1
    :goto_0
    packed-switch p4, :pswitch_data_1

    goto :goto_1

    .line 588
    :pswitch_2
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    goto :goto_1

    .line 582
    :pswitch_3
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->anyForegroundServiceStarted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 583
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 585
    :cond_2
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    nop

    .line 593
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private blacklist writeSparseIntArray(Landroid/os/Parcel;Landroid/util/SparseIntArray;)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arr"    # Landroid/util/SparseIntArray;

    .line 719
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 720
    .local v0, "size":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 722
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 725
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist add(Landroid/app/usage/UsageStats;)V
    .locals 11
    .param p1, "right"    # Landroid/app/usage/UsageStats;

    .line 367
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 374
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    iget-wide v2, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 377
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    iget-object v1, p1, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0, v1}, Landroid/app/usage/UsageStats;->mergeEventMap(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 378
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-direct {p0, v0, v1}, Landroid/app/usage/UsageStats;->mergeEventMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 379
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 380
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 381
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    .line 382
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 385
    :cond_0
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    .line 386
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 387
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 388
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    .line 389
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 390
    iget v0, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    iget v1, p1, Landroid/app/usage/UsageStats;->mLaunchCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    .line 391
    iget v0, p0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    iget v1, p1, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 394
    iget v0, p0, Landroid/app/usage/UsageStats;->mErrorCount:I

    iget v1, p1, Landroid/app/usage/UsageStats;->mErrorCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/app/usage/UsageStats;->mErrorCount:I

    .line 396
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-nez v0, :cond_1

    .line 397
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    goto/16 :goto_3

    .line 398
    :cond_1
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v0, :cond_5

    .line 399
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 400
    .local v0, "chooserCountsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 401
    iget-object v2, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 402
    .local v2, "action":Ljava/lang/String;
    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 403
    .local v3, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v4, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 407
    :cond_2
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 408
    .local v4, "annotationSize":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_4

    .line 409
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 410
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 411
    .local v7, "rightValue":I
    iget-object v8, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 412
    .local v8, "leftValue":I
    iget-object v9, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArrayMap;

    add-int v10, v8, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "rightValue":I
    .end local v8    # "leftValue":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 404
    .end local v4    # "annotationSize":I
    .end local v5    # "j":I
    :cond_3
    :goto_2
    iget-object v4, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    nop

    .line 400
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    .end local v0    # "chooserCountsSize":I
    .end local v1    # "i":I
    :cond_5
    :goto_3
    return-void

    .line 368
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t merge UsageStats for package \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' with UsageStats for package \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 676
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAppLaunchCount()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 329
    iget v0, p0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    return v0
.end method

.method public whitelist getErrorCount()J
    .locals 2

    .line 298
    iget v0, p0, Landroid/app/usage/UsageStats;->mErrorCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist getFirstTimeStamp()J
    .locals 2

    .line 235
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    return-wide v0
.end method

.method public whitelist getLastTimeAnyComponentUsed()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 319
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    return-wide v0
.end method

.method public whitelist getLastTimeForegroundServiceUsed()J
    .locals 2

    .line 289
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    return-wide v0
.end method

.method public whitelist getLastTimeStamp()J
    .locals 2

    .line 245
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    return-wide v0
.end method

.method public whitelist getLastTimeUsed()J
    .locals 2

    .line 254
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    return-wide v0
.end method

.method public whitelist getLastTimeVisible()J
    .locals 2

    .line 262
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    return-wide v0
.end method

.method public greylist-max-o getObfuscatedForInstantApp()Landroid/app/usage/UsageStats;
    .locals 2

    .line 217
    new-instance v0, Landroid/app/usage/UsageStats;

    invoke-direct {v0, p0}, Landroid/app/usage/UsageStats;-><init>(Landroid/app/usage/UsageStats;)V

    .line 219
    .local v0, "ret":Landroid/app/usage/UsageStats;
    const-string v1, "android.instant_app"

    iput-object v1, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 221
    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTotalTimeForegroundServiceUsed()J
    .locals 2

    .line 306
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    return-wide v0
.end method

.method public whitelist getTotalTimeInForeground()J
    .locals 2

    .line 270
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    return-wide v0
.end method

.method public whitelist getTotalTimeVisible()J
    .locals 2

    .line 279
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    return-wide v0
.end method

.method public blacklist update(Ljava/lang/String;JII)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J
    .param p4, "eventType"    # I
    .param p5, "instanceId"    # I

    .line 606
    sparse-switch p4, :sswitch_data_0

    goto/16 :goto_1

    .line 662
    :sswitch_0
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    .line 663
    goto/16 :goto_1

    .line 639
    :sswitch_1
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeUsed(J)V

    .line 642
    :cond_0
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasVisibleActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeVisible(J)V

    .line 645
    :cond_1
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->anyForegroundServiceStarted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 646
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementServiceTimeUsed(J)V

    goto :goto_1

    .line 628
    :sswitch_2
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->anyForegroundServiceStarted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 629
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementServiceTimeUsed(J)V

    goto :goto_1

    .line 633
    :sswitch_3
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 634
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    goto :goto_1

    .line 624
    :sswitch_4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/usage/UsageStats;->updateForegroundService(Ljava/lang/String;JI)V

    .line 625
    goto :goto_1

    .line 650
    :sswitch_5
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 651
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeUsed(J)V

    goto :goto_0

    .line 653
    :cond_2
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 655
    :goto_0
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasVisibleActivity()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 656
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeVisible(J)V

    goto :goto_1

    .line 658
    :cond_3
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 660
    goto :goto_1

    .line 615
    :sswitch_6
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 616
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeUsed(J)V

    .line 618
    :cond_4
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasVisibleActivity()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 619
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeVisible(J)V

    goto :goto_1

    .line 611
    :sswitch_7
    invoke-direct/range {p0 .. p5}, Landroid/app/usage/UsageStats;->updateActivity(Ljava/lang/String;JII)V

    .line 612
    nop

    .line 667
    :cond_5
    :goto_1
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 669
    const/4 v0, 0x1

    if-ne p4, v0, :cond_6

    .line 670
    iget v1, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    .line 672
    :cond_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_7
        0x3 -> :sswitch_6
        0x7 -> :sswitch_5
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x17 -> :sswitch_7
        0x18 -> :sswitch_7
        0x19 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 10
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 681
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 682
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 683
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 684
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 685
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 686
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 687
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 688
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 689
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 690
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 691
    iget v0, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    iget v0, p0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    iget v0, p0, Landroid/app/usage/UsageStats;->mErrorCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    iget v0, p0, Landroid/app/usage/UsageStats;->mLastEvent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 699
    .local v0, "allCounts":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v1, :cond_1

    .line 700
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 701
    .local v1, "chooserCountSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 702
    iget-object v3, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 703
    .local v3, "action":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 704
    .local v4, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 705
    .local v5, "currentCounts":Landroid/os/Bundle;
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 706
    .local v6, "annotationSize":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v6, :cond_0

    .line 707
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 706
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 709
    .end local v7    # "j":I
    :cond_0
    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 701
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "currentCounts":Landroid/os/Bundle;
    .end local v6    # "annotationSize":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 712
    .end local v1    # "chooserCountSize":I
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 714
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1, v1}, Landroid/app/usage/UsageStats;->writeSparseIntArray(Landroid/os/Parcel;Landroid/util/SparseIntArray;)V

    .line 715
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-direct {p0, v1}, Landroid/app/usage/UsageStats;->eventMapToBundle(Landroid/util/ArrayMap;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 716
    return-void
.end method
