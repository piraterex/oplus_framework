.class Landroid/graphics/drawable/RippleAnimationSession$3;
.super Landroid/graphics/drawable/RippleAnimationSession$AnimatorListener;
.source "RippleAnimationSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/drawable/RippleAnimationSession;->startAnimation(Landroid/animation/Animator;Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/drawable/RippleAnimationSession;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/drawable/RippleAnimationSession;Landroid/graphics/drawable/RippleAnimationSession;)V
    .locals 0
    .param p1, "this$0"    # Landroid/graphics/drawable/RippleAnimationSession;
    .param p2, "session"    # Landroid/graphics/drawable/RippleAnimationSession;

    .line 218
    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$3;->this$0:Landroid/graphics/drawable/RippleAnimationSession;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/RippleAnimationSession$AnimatorListener;-><init>(Landroid/graphics/drawable/RippleAnimationSession;)V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 221
    invoke-super {p0, p1}, Landroid/graphics/drawable/RippleAnimationSession$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 222
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$3;->this$0:Landroid/graphics/drawable/RippleAnimationSession;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/drawable/RippleAnimationSession;->-$$Nest$fputmLoopAnimation(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/Animator;)V

    .line 223
    return-void
.end method
