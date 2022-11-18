.class public Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;
.super Ljava/lang/Object;
.source "FrameTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceControlWrapper"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addJankStatsListener(Landroid/view/SurfaceControl$OnJankDataListener;Landroid/view/SurfaceControl;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/SurfaceControl$OnJankDataListener;
    .param p2, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 692
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->addJankDataListener(Landroid/view/SurfaceControl$OnJankDataListener;Landroid/view/SurfaceControl;)V

    .line 693
    return-void
.end method

.method public blacklist removeJankStatsListener(Landroid/view/SurfaceControl$OnJankDataListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/SurfaceControl$OnJankDataListener;

    .line 696
    invoke-static {p1}, Landroid/view/SurfaceControl;->removeJankDataListener(Landroid/view/SurfaceControl$OnJankDataListener;)V

    .line 697
    return-void
.end method
