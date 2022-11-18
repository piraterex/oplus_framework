.class public final synthetic Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/inputmethodservice/NavigationBarController$Impl;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/inputmethodservice/NavigationBarController$Impl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;->f$0:Landroid/inputmethodservice/NavigationBarController$Impl;

    return-void
.end method


# virtual methods
.method public final whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;->f$0:Landroid/inputmethodservice/NavigationBarController$Impl;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/NavigationBarController$Impl;->lambda$onSystemBarAppearanceChanged$1$android-inputmethodservice-NavigationBarController$Impl(Landroid/animation/ValueAnimator;)V

    return-void
.end method
