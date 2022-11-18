.class Landroid/window/SplashScreenView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SplashScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/window/SplashScreenView;->initIconAnimation(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/window/SplashScreenView;


# direct methods
.method constructor blacklist <init>(Landroid/window/SplashScreenView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/window/SplashScreenView;

    .line 483
    iput-object p1, p0, Landroid/window/SplashScreenView$1;->this$0:Landroid/window/SplashScreenView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 486
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 487
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 491
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 492
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 496
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    iget-object v1, p0, Landroid/window/SplashScreenView$1;->this$0:Landroid/window/SplashScreenView;

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    .line 498
    return-void
.end method
