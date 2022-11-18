.class Landroid/animation/AnimationHandler$1;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/animation/AnimationHandler;


# direct methods
.method constructor blacklist <init>(Landroid/animation/AnimationHandler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/animation/AnimationHandler;

    .line 83
    iput-object p1, p0, Landroid/animation/AnimationHandler$1;->this$0:Landroid/animation/AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist doFrame(J)V
    .locals 3
    .param p1, "frameTimeNanos"    # J

    .line 86
    iget-object v0, p0, Landroid/animation/AnimationHandler$1;->this$0:Landroid/animation/AnimationHandler;

    invoke-static {v0}, Landroid/animation/AnimationHandler;->-$$Nest$mgetProvider(Landroid/animation/AnimationHandler;)Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v1

    invoke-interface {v1}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->getFrameTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/animation/AnimationHandler;->-$$Nest$mdoAnimationFrame(Landroid/animation/AnimationHandler;J)V

    .line 87
    iget-object v0, p0, Landroid/animation/AnimationHandler$1;->this$0:Landroid/animation/AnimationHandler;

    invoke-static {v0}, Landroid/animation/AnimationHandler;->-$$Nest$fgetmAnimationCallbacks(Landroid/animation/AnimationHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    iget-object v0, p0, Landroid/animation/AnimationHandler$1;->this$0:Landroid/animation/AnimationHandler;

    invoke-static {v0}, Landroid/animation/AnimationHandler;->-$$Nest$mgetProvider(Landroid/animation/AnimationHandler;)Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 90
    :cond_0
    return-void
.end method
