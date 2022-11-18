.class public final synthetic Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/graphics/drawable/RippleDrawable;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/drawable/RippleDrawable;

    return-void
.end method


# virtual methods
.method public final whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->lambda$startBackgroundAnimation$0$android-graphics-drawable-RippleDrawable(Landroid/animation/ValueAnimator;)V

    return-void
.end method
