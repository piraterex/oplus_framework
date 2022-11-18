.class Landroid/app/EnterTransitionCoordinator$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EnterTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->startEnterTransition(Landroid/transition/Transition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/EnterTransitionCoordinator;


# direct methods
.method constructor blacklist <init>(Landroid/app/EnterTransitionCoordinator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/EnterTransitionCoordinator;

    .line 624
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$6;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 627
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$6;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-static {v0}, Landroid/app/EnterTransitionCoordinator;->-$$Nest$mmakeOpaque(Landroid/app/EnterTransitionCoordinator;)V

    .line 628
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$6;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->backgroundAnimatorComplete()V

    .line 629
    return-void
.end method
