.class public final Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;
.super Ljava/lang/Object;
.source "SfVsyncFrameCallbackProvider.java"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;


# instance fields
.field private final blacklist mChoreographer:Landroid/view/Choreographer;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/Choreographer;)V
    .locals 0
    .param p1, "choreographer"    # Landroid/view/Choreographer;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    .line 38
    return-void
.end method


# virtual methods
.method public blacklist getFrameDelay()J
    .locals 2

    .line 57
    invoke-static {}, Landroid/view/Choreographer;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getFrameTime()J
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist postCommitCallback(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 47
    iget-object v0, p0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public blacklist postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    .line 42
    iget-object v0, p0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 43
    return-void
.end method

.method public blacklist setFrameDelay(J)V
    .locals 0
    .param p1, "delay"    # J

    .line 62
    invoke-static {p1, p2}, Landroid/view/Choreographer;->setFrameDelay(J)V

    .line 63
    return-void
.end method
