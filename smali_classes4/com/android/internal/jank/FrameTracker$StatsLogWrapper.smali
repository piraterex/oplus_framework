.class public Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;
.super Ljava/lang/Object;
.source "FrameTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatsLogWrapper"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist write(IIJJJJJJ)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # J
    .param p5, "arg3"    # J
    .param p7, "arg4"    # J
    .param p9, "arg5"    # J
    .param p11, "arg6"    # J
    .param p13, "arg7"    # J

    .line 716
    invoke-static/range {p1 .. p14}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJJJJJ)V

    .line 717
    return-void
.end method
