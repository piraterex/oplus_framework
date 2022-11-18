.class Landroid/transition/ChangeBounds$7;
.super Landroid/transition/TransitionListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mCanceled:Z

.field final synthetic blacklist this$0:Landroid/transition/ChangeBounds;

.field final synthetic blacklist val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor blacklist <init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/transition/ChangeBounds;

    .line 321
    iput-object p1, p0, Landroid/transition/ChangeBounds$7;->this$0:Landroid/transition/ChangeBounds;

    iput-object p2, p0, Landroid/transition/ChangeBounds$7;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    .line 322
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/transition/ChangeBounds$7;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public whitelist onTransitionCancel(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 326
    iget-object v0, p0, Landroid/transition/ChangeBounds$7;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/ChangeBounds$7;->mCanceled:Z

    .line 328
    return-void
.end method

.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 332
    iget-boolean v0, p0, Landroid/transition/ChangeBounds$7;->mCanceled:Z

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Landroid/transition/ChangeBounds$7;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 335
    :cond_0
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 336
    return-void
.end method

.method public whitelist onTransitionPause(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 340
    iget-object v0, p0, Landroid/transition/ChangeBounds$7;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 341
    return-void
.end method

.method public whitelist onTransitionResume(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 345
    iget-object v0, p0, Landroid/transition/ChangeBounds$7;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 346
    return-void
.end method
