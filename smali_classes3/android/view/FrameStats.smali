.class public abstract Landroid/view/FrameStats;
.super Ljava/lang/Object;
.source "FrameStats.java"


# static fields
.field public static final whitelist UNDEFINED_TIME_NANO:J = -0x1L


# instance fields
.field protected greylist-max-o mFramesPresentedTimeNano:[J

.field protected greylist-max-o mRefreshPeriodNano:J


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist getEndTimeNano()J
    .locals 2

    .line 78
    invoke-virtual {p0}, Landroid/view/FrameStats;->getFrameCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 79
    const-wide/16 v0, -0x1

    return-wide v0

    .line 81
    :cond_0
    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final whitelist getFrameCount()I
    .locals 1

    .line 50
    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    if-eqz v0, :cond_0

    .line 51
    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0
.end method

.method public final whitelist getFramePresentedTimeNano(I)J
    .locals 2
    .param p1, "index"    # I

    .line 92
    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    if-eqz v0, :cond_0

    .line 95
    aget-wide v0, v0, p1

    return-wide v0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final whitelist getRefreshPeriodNano()J
    .locals 2

    .line 41
    iget-wide v0, p0, Landroid/view/FrameStats;->mRefreshPeriodNano:J

    return-wide v0
.end method

.method public final whitelist getStartTimeNano()J
    .locals 2

    .line 63
    invoke-virtual {p0}, Landroid/view/FrameStats;->getFrameCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 64
    const-wide/16 v0, -0x1

    return-wide v0

    .line 66
    :cond_0
    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method
