.class Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget;
.super Ljava/lang/Object;
.source "SurfaceSyncer.java"

# interfaces
.implements Landroid/window/SurfaceSyncer$SyncTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SurfaceSyncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SurfaceViewSyncTarget"
.end annotation


# instance fields
.field private final blacklist mFrameCallbackConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/window/SurfaceSyncer$SurfaceViewFrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method constructor blacklist <init>(Landroid/view/SurfaceView;Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceView;",
            "Ljava/util/function/Consumer<",
            "Landroid/window/SurfaceSyncer$SurfaceViewFrameCallback;",
            ">;)V"
        }
    .end annotation

    .line 449
    .local p2, "frameCallbackConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/window/SurfaceSyncer$SurfaceViewFrameCallback;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-object p1, p0, Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget;->mSurfaceView:Landroid/view/SurfaceView;

    .line 451
    iput-object p2, p0, Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget;->mFrameCallbackConsumer:Ljava/util/function/Consumer;

    .line 452
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onReadyToSync$0$android-window-SurfaceSyncer$SurfaceViewSyncTarget(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .locals 2
    .param p1, "syncBufferCallback"    # Landroid/window/SurfaceSyncer$SyncBufferCallback;

    .line 457
    iget-object v0, p0, Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda0;-><init>(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->syncNextFrame(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onReadyToSync(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .locals 2
    .param p1, "syncBufferCallback"    # Landroid/window/SurfaceSyncer$SyncBufferCallback;

    .line 456
    iget-object v0, p0, Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget;->mFrameCallbackConsumer:Ljava/util/function/Consumer;

    new-instance v1, Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget$$ExternalSyntheticLambda0;-><init>(Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget;Landroid/window/SurfaceSyncer$SyncBufferCallback;)V

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 458
    return-void
.end method
