.class public final synthetic Landroid/view/SurfaceView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/SurfaceView;

.field public final synthetic blacklist f$1:Landroid/window/SurfaceSyncer$SyncBufferCallback;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncer$SyncBufferCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;->f$0:Landroid/view/SurfaceView;

    iput-object p2, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;->f$1:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    iput p3, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;->f$0:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;->f$1:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    iget v2, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceView;->lambda$handleSyncNoBuffer$3$android-view-SurfaceView(Landroid/window/SurfaceSyncer$SyncBufferCallback;I)V

    return-void
.end method
