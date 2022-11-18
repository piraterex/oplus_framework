.class public Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;
.super Ljava/lang/Object;
.source "FrameTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewRootWrapper"
.end annotation


# instance fields
.field private final blacklist mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 673
    return-void
.end method


# virtual methods
.method public blacklist addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    .line 676
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 677
    return-void
.end method

.method public blacklist getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    .line 680
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 681
    return-void
.end method
