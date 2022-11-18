.class public Landroid/view/Choreographer$FrameTimeline;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameTimeline"
.end annotation


# static fields
.field static final blacklist INVALID_FRAME_TIMELINE:Landroid/view/Choreographer$FrameTimeline;


# instance fields
.field private blacklist mDeadlineNanos:J

.field private blacklist mExpectedPresentTimeNanos:J

.field private blacklist mVsyncId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    .line 1142
    new-instance v7, Landroid/view/Choreographer$FrameTimeline;

    const-wide/16 v1, -0x1

    const-wide v3, 0x7fffffffffffffffL

    const-wide v5, 0x7fffffffffffffffL

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/Choreographer$FrameTimeline;-><init>(JJJ)V

    sput-object v7, Landroid/view/Choreographer$FrameTimeline;->INVALID_FRAME_TIMELINE:Landroid/view/Choreographer$FrameTimeline;

    return-void
.end method

.method constructor blacklist <init>(JJJ)V
    .locals 0
    .param p1, "vsyncId"    # J
    .param p3, "expectedPresentTimeNanos"    # J
    .param p5, "deadlineNanos"    # J

    .line 1145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1146
    iput-wide p1, p0, Landroid/view/Choreographer$FrameTimeline;->mVsyncId:J

    .line 1147
    iput-wide p3, p0, Landroid/view/Choreographer$FrameTimeline;->mExpectedPresentTimeNanos:J

    .line 1148
    iput-wide p5, p0, Landroid/view/Choreographer$FrameTimeline;->mDeadlineNanos:J

    .line 1149
    return-void
.end method


# virtual methods
.method public whitelist getDeadlineNanos()J
    .locals 2

    .line 1180
    iget-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mDeadlineNanos:J

    return-wide v0
.end method

.method public whitelist getExpectedPresentationTimeNanos()J
    .locals 2

    .line 1173
    iget-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mExpectedPresentTimeNanos:J

    return-wide v0
.end method

.method public whitelist getVsyncId()J
    .locals 2

    .line 1160
    iget-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mVsyncId:J

    return-wide v0
.end method

.method blacklist resetVsyncId()V
    .locals 2

    .line 1165
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mVsyncId:J

    .line 1166
    return-void
.end method
