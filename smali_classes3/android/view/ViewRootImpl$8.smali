.class Landroid/view/ViewRootImpl$8;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->registerCallbacksForSync(ZLandroid/window/SurfaceSyncer$SyncBufferCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;

.field final synthetic blacklist val$syncBuffer:Z

.field final synthetic blacklist val$syncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/window/SurfaceSyncer$SyncBufferCallback;Z)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 11354
    iput-object p1, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$8;->val$syncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    iput-boolean p3, p0, Landroid/view/ViewRootImpl$8;->val$syncBuffer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onFrameDraw$0$android-view-ViewRootImpl$8(JZLandroid/window/SurfaceSyncer$SyncBufferCallback;Z)V
    .locals 3
    .param p1, "frame"    # J
    .param p3, "syncBuffer"    # Z
    .param p4, "syncBufferCallback"    # Landroid/window/SurfaceSyncer$SyncBufferCallback;
    .param p5, "didProduceBuffer"    # Z

    .line 11389
    iget-object v0, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received frameCommittedCallback lastAttemptedDrawFrameNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " didProduceBuffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " syncBuffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11397
    iget-object v0, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmViewRootImplSocExt(Landroid/view/ViewRootImpl;)Landroid/view/IViewRootImplSocExt;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplSocExt;->hookOnFrameDrawPerfHint()V

    .line 11403
    const/4 v0, 0x0

    if-nez p5, :cond_0

    .line 11404
    iget-object v1, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(Ljava/util/function/Consumer;)V

    .line 11410
    iget-object v0, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v0

    .line 11411
    invoke-virtual {v0, p1, p2}, Landroid/graphics/BLASTBufferQueue;->gatherPendingTransactions(J)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 11410
    invoke-interface {p4, v0}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    .line 11412
    return-void

    .line 11418
    :cond_0
    if-nez p3, :cond_1

    .line 11419
    invoke-interface {p4, v0}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    .line 11421
    :cond_1
    return-void
.end method

.method public blacklist onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    .locals 9
    .param p1, "syncResult"    # I
    .param p2, "frame"    # J

    .line 11361
    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetDEBUG_BLAST()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11362
    iget-object v0, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received frameDrawingCallback syncResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " frameNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11371
    :cond_0
    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_1

    .line 11373
    iget-object v0, p0, Landroid/view/ViewRootImpl$8;->val$syncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    iget-object v1, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v1

    .line 11374
    invoke-virtual {v1, p2, p3}, Landroid/graphics/BLASTBufferQueue;->gatherPendingTransactions(J)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 11373
    invoke-interface {v0, v1}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    .line 11375
    const/4 v0, 0x0

    return-object v0

    .line 11378
    :cond_1
    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetDEBUG_BLAST()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11379
    iget-object v0, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setting up sync and frameCommitCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11382
    :cond_2
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$8;->val$syncBuffer:Z

    if-eqz v0, :cond_3

    .line 11383
    iget-object v0, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl$8;->val$syncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda0;-><init>(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V

    invoke-virtual {v0, v2}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(Ljava/util/function/Consumer;)V

    .line 11386
    :cond_3
    iget-boolean v7, p0, Landroid/view/ViewRootImpl$8;->val$syncBuffer:Z

    iget-object v8, p0, Landroid/view/ViewRootImpl$8;->val$syncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    new-instance v0, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda1;

    move-object v3, v0

    move-object v4, p0

    move-wide v5, p2

    invoke-direct/range {v3 .. v8}, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda1;-><init>(Landroid/view/ViewRootImpl$8;JZLandroid/window/SurfaceSyncer$SyncBufferCallback;)V

    return-object v0
.end method

.method public blacklist onFrameDraw(J)V
    .locals 0
    .param p1, "frame"    # J

    .line 11357
    return-void
.end method
