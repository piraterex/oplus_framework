.class public final synthetic Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/window/SurfaceSyncer$SurfaceViewFrameCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget;

.field public final synthetic blacklist f$1:Landroid/window/SurfaceSyncer$SyncBufferCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget;Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget$$ExternalSyntheticLambda0;->f$0:Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget;

    iput-object p2, p0, Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget$$ExternalSyntheticLambda0;->f$1:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    return-void
.end method


# virtual methods
.method public final blacklist onFrameStarted()V
    .locals 2

    iget-object v0, p0, Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget$$ExternalSyntheticLambda0;->f$0:Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget;

    iget-object v1, p0, Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget$$ExternalSyntheticLambda0;->f$1:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    invoke-virtual {v0, v1}, Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget;->lambda$onReadyToSync$0$android-window-SurfaceSyncer$SurfaceViewSyncTarget(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V

    return-void
.end method
