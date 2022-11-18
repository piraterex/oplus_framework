.class Landroid/view/ViewDebug$PictureCallbackHandler;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Landroid/graphics/HardwareRenderer$PictureCapturedCallback;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PictureCallbackHandler"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/graphics/Picture;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final blacklist mQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/graphics/Picture;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRenderThread:Ljava/lang/Thread;

.field private final blacklist mRenderer:Landroid/graphics/HardwareRenderer;

.field private blacklist mStopListening:Z


# direct methods
.method private constructor blacklist <init>(Landroid/graphics/HardwareRenderer;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "renderer"    # Landroid/graphics/HardwareRenderer;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/HardwareRenderer;",
            "Ljava/util/function/Function<",
            "Landroid/graphics/Picture;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 842
    .local p2, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/graphics/Picture;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 837
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mQueue:Ljava/util/ArrayDeque;

    .line 843
    iput-object p1, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mRenderer:Landroid/graphics/HardwareRenderer;

    .line 844
    iput-object p2, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mCallback:Ljava/util/function/Function;

    .line 845
    iput-object p3, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mExecutor:Ljava/util/concurrent/Executor;

    .line 846
    invoke-virtual {p1, p0}, Landroid/graphics/HardwareRenderer;->setPictureCaptureCallback(Landroid/graphics/HardwareRenderer$PictureCapturedCallback;)V

    .line 847
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/HardwareRenderer;Ljava/util/function/Function;Ljava/util/concurrent/Executor;Landroid/view/ViewDebug$PictureCallbackHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewDebug$PictureCallbackHandler;-><init>(Landroid/graphics/HardwareRenderer;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    .line 851
    iget-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 852
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mStopListening:Z

    .line 853
    iget-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 854
    iget-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mRenderer:Landroid/graphics/HardwareRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/HardwareRenderer;->setPictureCaptureCallback(Landroid/graphics/HardwareRenderer$PictureCapturedCallback;)V

    .line 855
    return-void
.end method

.method public blacklist onPictureCaptured(Landroid/graphics/Picture;)V
    .locals 3
    .param p1, "picture"    # Landroid/graphics/Picture;

    .line 859
    iget-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 860
    iget-boolean v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mStopListening:Z

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 862
    iget-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mRenderer:Landroid/graphics/HardwareRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/HardwareRenderer;->setPictureCaptureCallback(Landroid/graphics/HardwareRenderer$PictureCapturedCallback;)V

    .line 863
    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mRenderThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 866
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mRenderThread:Ljava/lang/Thread;

    .line 868
    :cond_1
    const/4 v0, 0x0

    .line 869
    .local v0, "toDestroy":Landroid/graphics/Picture;
    iget-object v1, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 870
    iget-object v1, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/graphics/Picture;

    .line 872
    :cond_2
    iget-object v1, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 873
    iget-object v1, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 874
    if-nez v0, :cond_3

    .line 875
    iget-object v1, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 877
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Picture;->close()V

    .line 879
    :goto_0
    return-void
.end method

.method public whitelist test-api run()V
    .locals 4

    .line 883
    iget-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 884
    iget-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Picture;

    .line 885
    .local v0, "picture":Landroid/graphics/Picture;
    iget-boolean v1, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mStopListening:Z

    .line 886
    .local v1, "isStopped":Z
    iget-object v2, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 887
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mRenderThread:Ljava/lang/Thread;

    if-eq v2, v3, :cond_2

    .line 893
    if-eqz v1, :cond_0

    .line 894
    invoke-virtual {v0}, Landroid/graphics/Picture;->close()V

    .line 895
    return-void

    .line 897
    :cond_0
    iget-object v2, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mCallback:Ljava/util/function/Function;

    invoke-interface {v2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 898
    .local v2, "keepReceiving":Z
    if-nez v2, :cond_1

    .line 899
    invoke-virtual {p0}, Landroid/view/ViewDebug$PictureCallbackHandler;->close()V

    .line 901
    :cond_1
    return-void

    .line 888
    .end local v2    # "keepReceiving":Z
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewDebug$PictureCallbackHandler;->close()V

    .line 889
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ViewDebug#startRenderingCommandsCapture must be given an executor that invokes asynchronously"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
