.class Landroid/app/EnterTransitionCoordinator$7;
.super Landroid/transition/TransitionListenerAdapter;
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

    .line 633
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$7;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 636
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 637
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$7;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-static {v0}, Landroid/app/EnterTransitionCoordinator;->-$$Nest$mmakeOpaque(Landroid/app/EnterTransitionCoordinator;)V

    .line 638
    return-void
.end method
