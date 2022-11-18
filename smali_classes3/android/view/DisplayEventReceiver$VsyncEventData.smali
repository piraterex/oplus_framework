.class public final Landroid/view/DisplayEventReceiver$VsyncEventData;
.super Ljava/lang/Object;
.source "DisplayEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VsyncEventData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
    }
.end annotation


# static fields
.field static final blacklist INVALID_FRAME_TIMELINES:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;


# instance fields
.field public final blacklist frameInterval:J

.field public final blacklist frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

.field public final blacklist preferredFrameTimelineIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 143
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    new-instance v8, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    const-wide/16 v2, -0x1

    const-wide v4, 0x7fffffffffffffffL

    const-wide v6, 0x7fffffffffffffffL

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;-><init>(JJJ)V

    const/4 v1, 0x0

    aput-object v8, v0, v1

    sput-object v0, Landroid/view/DisplayEventReceiver$VsyncEventData;->INVALID_FRAME_TIMELINES:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J

    .line 187
    sget-object v0, Landroid/view/DisplayEventReceiver$VsyncEventData;->INVALID_FRAME_TIMELINES:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    iput-object v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    .line 189
    return-void
.end method

.method constructor blacklist <init>([Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;IJ)V
    .locals 0
    .param p1, "frameTimelines"    # [Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
    .param p2, "preferredFrameTimelineIndex"    # I
    .param p3, "frameInterval"    # J

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    .line 181
    iput p2, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    .line 182
    iput-wide p3, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J

    .line 183
    return-void
.end method


# virtual methods
.method public blacklist preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
    .locals 2

    .line 192
    iget-object v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    iget v1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method
