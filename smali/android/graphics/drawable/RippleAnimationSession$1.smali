.class Landroid/graphics/drawable/RippleAnimationSession$1;
.super Landroid/graphics/drawable/RippleAnimationSession$AnimatorListener;
.source "RippleAnimationSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/drawable/RippleAnimationSession;->exitSoftware()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/drawable/RippleAnimationSession;

.field final synthetic blacklist val$expand:Landroid/animation/ValueAnimator;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/drawable/RippleAnimationSession;Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/graphics/drawable/RippleAnimationSession;
    .param p2, "session"    # Landroid/graphics/drawable/RippleAnimationSession;

    .line 135
    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$1;->this$0:Landroid/graphics/drawable/RippleAnimationSession;

    iput-object p3, p0, Landroid/graphics/drawable/RippleAnimationSession$1;->val$expand:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/RippleAnimationSession$AnimatorListener;-><init>(Landroid/graphics/drawable/RippleAnimationSession;)V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 138
    invoke-super {p0, p1}, Landroid/graphics/drawable/RippleAnimationSession$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 139
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$1;->this$0:Landroid/graphics/drawable/RippleAnimationSession;

    invoke-static {v0}, Landroid/graphics/drawable/RippleAnimationSession;->-$$Nest$fgetmLoopAnimation(Landroid/graphics/drawable/RippleAnimationSession;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$1;->this$0:Landroid/graphics/drawable/RippleAnimationSession;

    invoke-static {v0}, Landroid/graphics/drawable/RippleAnimationSession;->-$$Nest$fgetmLoopAnimation(Landroid/graphics/drawable/RippleAnimationSession;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 140
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$1;->this$0:Landroid/graphics/drawable/RippleAnimationSession;

    invoke-static {v0}, Landroid/graphics/drawable/RippleAnimationSession;->-$$Nest$fgetmOnSessionEnd(Landroid/graphics/drawable/RippleAnimationSession;)Ljava/util/function/Consumer;

    move-result-object v0

    .line 141
    .local v0, "onEnd":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/drawable/RippleAnimationSession;>;"
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/RippleAnimationSession$1;->this$0:Landroid/graphics/drawable/RippleAnimationSession;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 142
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/RippleAnimationSession$1;->this$0:Landroid/graphics/drawable/RippleAnimationSession;

    invoke-static {v1}, Landroid/graphics/drawable/RippleAnimationSession;->-$$Nest$fgetmCurrentAnimation(Landroid/graphics/drawable/RippleAnimationSession;)Landroid/animation/Animator;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/drawable/RippleAnimationSession$1;->val$expand:Landroid/animation/ValueAnimator;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/graphics/drawable/RippleAnimationSession$1;->this$0:Landroid/graphics/drawable/RippleAnimationSession;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/RippleAnimationSession;->-$$Nest$fputmCurrentAnimation(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/Animator;)V

    .line 143
    :cond_2
    return-void
.end method
