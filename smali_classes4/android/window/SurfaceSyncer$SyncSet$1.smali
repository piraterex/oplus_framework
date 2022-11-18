.class Landroid/window/SurfaceSyncer$SyncSet$1;
.super Ljava/lang/Object;
.source "SurfaceSyncer.java"

# interfaces
.implements Landroid/window/SurfaceSyncer$SyncBufferCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/window/SurfaceSyncer$SyncSet;->addSyncableSurface(Landroid/window/SurfaceSyncer$SyncTarget;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/window/SurfaceSyncer$SyncSet;


# direct methods
.method constructor blacklist <init>(Landroid/window/SurfaceSyncer$SyncSet;)V
    .locals 0
    .param p1, "this$0"    # Landroid/window/SurfaceSyncer$SyncSet;

    .line 330
    iput-object p1, p0, Landroid/window/SurfaceSyncer$SyncSet$1;->this$0:Landroid/window/SurfaceSyncer$SyncSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBufferReady(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 333
    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet$1;->this$0:Landroid/window/SurfaceSyncer$SyncSet;

    invoke-static {v0}, Landroid/window/SurfaceSyncer$SyncSet;->-$$Nest$fgetmLock(Landroid/window/SurfaceSyncer$SyncSet;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 334
    if-eqz p1, :cond_0

    .line 335
    :try_start_0
    iget-object v1, p0, Landroid/window/SurfaceSyncer$SyncSet$1;->this$0:Landroid/window/SurfaceSyncer$SyncSet;

    invoke-static {v1}, Landroid/window/SurfaceSyncer$SyncSet;->-$$Nest$fgetmTransaction(Landroid/window/SurfaceSyncer$SyncSet;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 337
    :cond_0
    iget-object v1, p0, Landroid/window/SurfaceSyncer$SyncSet$1;->this$0:Landroid/window/SurfaceSyncer$SyncSet;

    invoke-static {v1}, Landroid/window/SurfaceSyncer$SyncSet;->-$$Nest$fgetmPendingSyncs(Landroid/window/SurfaceSyncer$SyncSet;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 338
    iget-object v1, p0, Landroid/window/SurfaceSyncer$SyncSet$1;->this$0:Landroid/window/SurfaceSyncer$SyncSet;

    invoke-static {v1}, Landroid/window/SurfaceSyncer$SyncSet;->-$$Nest$mcheckIfSyncIsComplete(Landroid/window/SurfaceSyncer$SyncSet;)V

    .line 339
    monitor-exit v0

    .line 340
    return-void

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
