.class public Landroid/view/Choreographer$FrameData;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameData"
.end annotation


# static fields
.field static final blacklist INVALID_FRAME_TIMELINES:[Landroid/view/Choreographer$FrameTimeline;


# instance fields
.field private blacklist mFrameTimeNanos:J

.field private blacklist mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

.field private blacklist mPreferredFrameTimeline:Landroid/view/Choreographer$FrameTimeline;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFrameTimeNanos(Landroid/view/Choreographer$FrameData;)J
    .locals 2

    iget-wide v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFrameTimeNanos(Landroid/view/Choreographer$FrameData;J)V
    .locals 0

    iput-wide p1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1190
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/Choreographer$FrameTimeline;

    sput-object v0, Landroid/view/Choreographer$FrameData;->INVALID_FRAME_TIMELINES:[Landroid/view/Choreographer$FrameTimeline;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 1191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1192
    sget-object v0, Landroid/view/Choreographer$FrameData;->INVALID_FRAME_TIMELINES:[Landroid/view/Choreographer$FrameTimeline;

    iput-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    .line 1193
    sget-object v0, Landroid/view/Choreographer$FrameTimeline;->INVALID_FRAME_TIMELINE:Landroid/view/Choreographer$FrameTimeline;

    iput-object v0, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimeline:Landroid/view/Choreographer$FrameTimeline;

    .line 1194
    return-void
.end method

.method constructor blacklist <init>(JLandroid/view/DisplayEventReceiver$VsyncEventData;)V
    .locals 11
    .param p1, "frameTimeNanos"    # J
    .param p3, "vsyncEventData"    # Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 1196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1197
    iget-object v0, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    array-length v0, v0

    new-array v0, v0, [Landroid/view/Choreographer$FrameTimeline;

    .line 1199
    .local v0, "frameTimelines":[Landroid/view/Choreographer$FrameTimeline;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1200
    iget-object v2, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    aget-object v2, v2, v1

    .line 1202
    .local v2, "frameTimeline":Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
    new-instance v10, Landroid/view/Choreographer$FrameTimeline;

    iget-wide v4, v2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    iget-wide v6, v2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentTime:J

    iget-wide v8, v2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/view/Choreographer$FrameTimeline;-><init>(JJJ)V

    aput-object v10, v0, v1

    .line 1199
    .end local v2    # "frameTimeline":Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1205
    .end local v1    # "i":I
    :cond_0
    iput-wide p1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    .line 1206
    iput-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    .line 1207
    iget v1, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimeline:Landroid/view/Choreographer$FrameTimeline;

    .line 1209
    return-void
.end method

.method private blacklist convertFrameTimelines(Landroid/view/DisplayEventReceiver$VsyncEventData;)[Landroid/view/Choreographer$FrameTimeline;
    .locals 11
    .param p1, "vsyncEventData"    # Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 1245
    iget-object v0, p1, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    array-length v0, v0

    new-array v0, v0, [Landroid/view/Choreographer$FrameTimeline;

    .line 1247
    .local v0, "frameTimelines":[Landroid/view/Choreographer$FrameTimeline;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1248
    iget-object v2, p1, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    aget-object v2, v2, v1

    .line 1250
    .local v2, "frameTimeline":Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
    new-instance v10, Landroid/view/Choreographer$FrameTimeline;

    iget-wide v4, v2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    iget-wide v6, v2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentTime:J

    iget-wide v8, v2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/view/Choreographer$FrameTimeline;-><init>(JJJ)V

    aput-object v10, v0, v1

    .line 1247
    .end local v2    # "frameTimeline":Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1253
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public whitelist getFrameTimeNanos()J
    .locals 2

    .line 1227
    iget-wide v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    return-wide v0
.end method

.method public whitelist getFrameTimelines()[Landroid/view/Choreographer$FrameTimeline;
    .locals 1

    .line 1234
    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    return-object v0
.end method

.method public whitelist getPreferredFrameTimeline()Landroid/view/Choreographer$FrameTimeline;
    .locals 1

    .line 1240
    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimeline:Landroid/view/Choreographer$FrameTimeline;

    return-object v0
.end method

.method blacklist updateFrameData(J)V
    .locals 4
    .param p1, "frameTimeNanos"    # J

    .line 1216
    iput-wide p1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    .line 1217
    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1221
    .local v3, "ft":Landroid/view/Choreographer$FrameTimeline;
    invoke-virtual {v3}, Landroid/view/Choreographer$FrameTimeline;->resetVsyncId()V

    .line 1217
    .end local v3    # "ft":Landroid/view/Choreographer$FrameTimeline;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1223
    :cond_0
    return-void
.end method
