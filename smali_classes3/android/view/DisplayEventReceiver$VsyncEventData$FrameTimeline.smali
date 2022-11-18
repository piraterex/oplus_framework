.class public Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
.super Ljava/lang/Object;
.source "DisplayEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayEventReceiver$VsyncEventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameTimeline"
.end annotation


# instance fields
.field public final blacklist deadline:J

.field public final blacklist expectedPresentTime:J

.field public final blacklist vsyncId:J


# direct methods
.method constructor blacklist <init>(JJJ)V
    .locals 0
    .param p1, "vsyncId"    # J
    .param p3, "expectedPresentTime"    # J
    .param p5, "deadline"    # J

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-wide p1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    .line 149
    iput-wide p3, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentTime:J

    .line 150
    iput-wide p5, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    .line 151
    return-void
.end method
