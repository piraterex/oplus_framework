.class public final synthetic Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/InsetsController$InternalAnimationControlListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda1;->f$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    return-void
.end method


# virtual methods
.method public final whitelist getInterpolation(F)F
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda1;->f$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController$InternalAnimationControlListener;->lambda$getInsetsInterpolator$1$android-view-InsetsController$InternalAnimationControlListener(F)F

    move-result p1

    return p1
.end method
