.class Lcom/android/internal/jank/FrameTracker$JankInfo;
.super Ljava/lang/Object;
.source "FrameTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JankInfo"
.end annotation


# instance fields
.field blacklist frameVsyncId:J

.field blacklist hwuiCallbackFired:Z

.field blacklist isFirstFrame:Z

.field blacklist jankType:I

.field blacklist surfaceControlCallbackFired:Z

.field blacklist totalDurationNanos:J


# direct methods
.method private constructor blacklist <init>(JZZIJZ)V
    .locals 0
    .param p1, "frameVsyncId"    # J
    .param p3, "hwuiCallbackFired"    # Z
    .param p4, "surfaceControlCallbackFired"    # Z
    .param p5, "jankType"    # I
    .param p6, "totalDurationNanos"    # J
    .param p8, "isFirstFrame"    # Z

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-wide p1, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    .line 139
    iput-boolean p3, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    .line 140
    iput-boolean p4, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    .line 141
    iput-wide p6, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    .line 142
    iput p5, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    .line 143
    iput-boolean p8, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->isFirstFrame:Z

    .line 144
    return-void
.end method

.method static blacklist createFromHwuiCallback(JJZ)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .locals 10
    .param p0, "frameVsyncId"    # J
    .param p2, "totalDurationNanos"    # J
    .param p4, "isFirstFrame"    # Z

    .line 126
    new-instance v9, Lcom/android/internal/jank/FrameTracker$JankInfo;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-wide v1, p0

    move-wide v6, p2

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/jank/FrameTracker$JankInfo;-><init>(JZZIJZ)V

    return-object v9
.end method

.method static blacklist createFromSurfaceControlCallback(JI)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .locals 10
    .param p0, "frameVsyncId"    # J
    .param p2, "jankType"    # I

    .line 132
    new-instance v9, Lcom/android/internal/jank/FrameTracker$JankInfo;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-wide v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/jank/FrameTracker$JankInfo;-><init>(JZZIJZ)V

    return-object v9
.end method
