.class final Landroid/view/ThreadedRenderer$WebViewOverlayProvider;
.super Ljava/lang/Object;
.source "ThreadedRenderer.java"

# interfaces
.implements Landroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;
.implements Landroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ThreadedRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WebViewOverlayProvider"
.end annotation


# static fields
.field private static final blacklist sOverlaysAreEnabled:Z


# instance fields
.field private blacklist mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field private blacklist mHasWebViewOverlays:Z

.field private blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field private final blacklist mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceControl(Landroid/view/ThreadedRenderer$WebViewOverlayProvider;)Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 272
    invoke-static {}, Landroid/view/ThreadedRenderer;->access$000()Z

    move-result v0

    sput-boolean v0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->sOverlaysAreEnabled:Z

    .line 271
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mHasWebViewOverlays:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/ThreadedRenderer$WebViewOverlayProvider-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onMergeTransaction(JJJ)Z
    .locals 1
    .param p1, "nativeTransactionObj"    # J
    .param p3, "aSurfaceControlNativeObj"    # J
    .param p5, "frameNr"    # J

    .line 318
    monitor-enter p0

    .line 319
    :try_start_0
    iget-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-nez v0, :cond_0

    .line 320
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 322
    :cond_0
    invoke-virtual {v0, p1, p2, p5, p6}, Landroid/graphics/BLASTBufferQueue;->mergeWithNextTransaction(JJ)V

    .line 323
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist prepare()V
    .locals 3

    .line 307
    monitor-enter p0

    .line 308
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mHasWebViewOverlays:Z

    .line 309
    iget-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 310
    iget-object v1, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 312
    :cond_0
    monitor-exit p0

    .line 313
    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist setBLASTBufferQueue(Landroid/graphics/BLASTBufferQueue;)V
    .locals 1
    .param p1, "bufferQueue"    # Landroid/graphics/BLASTBufferQueue;

    .line 300
    monitor-enter p0

    .line 301
    :try_start_0
    iput-object p1, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 302
    monitor-exit p0

    .line 303
    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist setSurfaceControl(Landroid/view/SurfaceControl;)V
    .locals 2
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 291
    monitor-enter p0

    .line 292
    :try_start_0
    iput-object p1, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 293
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mHasWebViewOverlays:Z

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 296
    :cond_0
    monitor-exit p0

    .line 297
    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist setSurfaceControlOpaque(Z)Z
    .locals 2
    .param p1, "opaque"    # Z

    .line 279
    monitor-enter p0

    .line 280
    :try_start_0
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mHasWebViewOverlays:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 281
    :cond_0
    iget-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 282
    monitor-exit p0

    .line 283
    return p1

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist shouldEnableOverlaySupport()Z
    .locals 1

    .line 287
    sget-boolean v0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->sOverlaysAreEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
