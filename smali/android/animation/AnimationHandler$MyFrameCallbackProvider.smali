.class Landroid/animation/AnimationHandler$MyFrameCallbackProvider;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFrameCallbackProvider"
.end annotation


# instance fields
.field final greylist-max-o mChoreographer:Landroid/view/Choreographer;

.field final synthetic blacklist this$0:Landroid/animation/AnimationHandler;


# direct methods
.method private constructor blacklist <init>(Landroid/animation/AnimationHandler;)V
    .locals 0

    .line 403
    iput-object p1, p0, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;->this$0:Landroid/animation/AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/animation/AnimationHandler;Landroid/animation/AnimationHandler$MyFrameCallbackProvider-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;-><init>(Landroid/animation/AnimationHandler;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o getFrameDelay()J
    .locals 2

    .line 424
    invoke-static {}, Landroid/view/Choreographer;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getFrameTime()J
    .locals 2

    .line 419
    iget-object v0, p0, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o postCommitCallback(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 414
    iget-object v0, p0, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 415
    return-void
.end method

.method public greylist-max-o postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    .line 409
    iget-object v0, p0, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 410
    return-void
.end method

.method public greylist-max-o setFrameDelay(J)V
    .locals 0
    .param p1, "delay"    # J

    .line 429
    invoke-static {p1, p2}, Landroid/view/Choreographer;->setFrameDelay(J)V

    .line 430
    return-void
.end method
