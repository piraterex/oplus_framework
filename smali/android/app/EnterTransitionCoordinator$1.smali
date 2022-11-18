.class Landroid/app/EnterTransitionCoordinator$1;
.super Ljava/lang/Object;
.source "EnterTransitionCoordinator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;-><init>(Landroid/app/Activity;Landroid/os/ResultReceiver;Ljava/util/ArrayList;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/EnterTransitionCoordinator;

.field final synthetic blacklist val$decorView:Landroid/view/View;

.field final synthetic blacklist val$viewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor blacklist <init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewTreeObserver;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/EnterTransitionCoordinator;

    .line 87
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$1;->this$0:Landroid/app/EnterTransitionCoordinator;

    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$1;->val$viewTreeObserver:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Landroid/app/EnterTransitionCoordinator$1;->val$decorView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .locals 1

    .line 90
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$1;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-static {v0}, Landroid/app/EnterTransitionCoordinator;->-$$Nest$fgetmIsReadyForTransition(Landroid/app/EnterTransitionCoordinator;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$1;->val$viewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$1;->val$viewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$1;->val$decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 97
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
