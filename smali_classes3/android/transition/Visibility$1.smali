.class Landroid/transition/Visibility$1;
.super Landroid/transition/TransitionListenerAdapter;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/transition/Visibility;

.field final synthetic blacklist val$finalOverlayView:Landroid/view/View;

.field final synthetic blacklist val$overlay:Landroid/view/ViewGroupOverlay;

.field final synthetic blacklist val$startView:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/transition/Visibility;Landroid/view/ViewGroupOverlay;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/transition/Visibility;

    .line 461
    iput-object p1, p0, Landroid/transition/Visibility$1;->this$0:Landroid/transition/Visibility;

    iput-object p2, p0, Landroid/transition/Visibility$1;->val$overlay:Landroid/view/ViewGroupOverlay;

    iput-object p3, p0, Landroid/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    iput-object p4, p0, Landroid/transition/Visibility$1;->val$startView:Landroid/view/View;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 479
    iget-object v0, p0, Landroid/transition/Visibility$1;->val$startView:Landroid/view/View;

    const v1, 0x102054d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 480
    iget-object v0, p0, Landroid/transition/Visibility$1;->val$overlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 481
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 482
    return-void
.end method

.method public whitelist onTransitionPause(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 465
    iget-object v0, p0, Landroid/transition/Visibility$1;->val$overlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 466
    return-void
.end method

.method public whitelist onTransitionResume(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 470
    iget-object v0, p0, Landroid/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Landroid/transition/Visibility$1;->val$overlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    goto :goto_0

    .line 473
    :cond_0
    iget-object v0, p0, Landroid/transition/Visibility$1;->this$0:Landroid/transition/Visibility;

    invoke-virtual {v0}, Landroid/transition/Visibility;->cancel()V

    .line 475
    :goto_0
    return-void
.end method
