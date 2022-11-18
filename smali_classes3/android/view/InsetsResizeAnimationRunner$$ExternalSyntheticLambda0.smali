.class public final synthetic Landroid/view/InsetsResizeAnimationRunner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/InsetsResizeAnimationRunner;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/InsetsResizeAnimationRunner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/InsetsResizeAnimationRunner$$ExternalSyntheticLambda0;->f$0:Landroid/view/InsetsResizeAnimationRunner;

    return-void
.end method


# virtual methods
.method public final whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner$$ExternalSyntheticLambda0;->f$0:Landroid/view/InsetsResizeAnimationRunner;

    invoke-virtual {v0, p1}, Landroid/view/InsetsResizeAnimationRunner;->lambda$onReady$0$android-view-InsetsResizeAnimationRunner(Landroid/animation/ValueAnimator;)V

    return-void
.end method
