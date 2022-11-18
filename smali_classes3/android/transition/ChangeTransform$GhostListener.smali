.class Landroid/transition/ChangeTransform$GhostListener;
.super Landroid/transition/TransitionListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GhostListener"
.end annotation


# instance fields
.field private greylist-max-o mGhostView:Landroid/view/GhostView;

.field private greylist-max-o mStartView:Landroid/view/View;

.field private greylist-max-o mView:Landroid/view/View;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/View;Landroid/view/View;Landroid/view/GhostView;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startView"    # Landroid/view/View;
    .param p3, "ghostView"    # Landroid/view/GhostView;

    .line 475
    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    .line 476
    iput-object p1, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    .line 477
    iput-object p2, p0, Landroid/transition/ChangeTransform$GhostListener;->mStartView:Landroid/view/View;

    .line 478
    iput-object p3, p0, Landroid/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/view/GhostView;

    .line 479
    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 483
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 484
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    .line 485
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    const v1, 0x102054c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 486
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    const v1, 0x1020418

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 487
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mStartView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 488
    return-void
.end method

.method public whitelist onTransitionPause(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 492
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/view/GhostView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/GhostView;->setVisibility(I)V

    .line 493
    return-void
.end method

.method public whitelist onTransitionResume(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 497
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/view/GhostView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GhostView;->setVisibility(I)V

    .line 498
    return-void
.end method
