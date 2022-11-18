.class public final synthetic Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameCommitCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewRootImpl$8;

.field public final synthetic blacklist f$1:J

.field public final synthetic blacklist f$2:Z

.field public final synthetic blacklist f$3:Landroid/window/SurfaceSyncer$SyncBufferCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl$8;JZLandroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda1;->f$0:Landroid/view/ViewRootImpl$8;

    iput-wide p2, p0, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda1;->f$1:J

    iput-boolean p4, p0, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda1;->f$2:Z

    iput-object p5, p0, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda1;->f$3:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    return-void
.end method


# virtual methods
.method public final blacklist onFrameCommit(Z)V
    .locals 6

    iget-object v0, p0, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda1;->f$0:Landroid/view/ViewRootImpl$8;

    iget-wide v1, p0, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda1;->f$1:J

    iget-boolean v3, p0, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda1;->f$2:Z

    iget-object v4, p0, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda1;->f$3:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewRootImpl$8;->lambda$onFrameDraw$0$android-view-ViewRootImpl$8(JZLandroid/window/SurfaceSyncer$SyncBufferCallback;Z)V

    return-void
.end method
