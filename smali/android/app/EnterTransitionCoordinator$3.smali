.class Landroid/app/EnterTransitionCoordinator$3;
.super Ljava/lang/Object;
.source "EnterTransitionCoordinator.java"

# interfaces
.implements Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->onTakeSharedElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/EnterTransitionCoordinator;

.field final synthetic blacklist val$sharedElementState:Landroid/os/Bundle;


# direct methods
.method constructor blacklist <init>(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/EnterTransitionCoordinator;

    .line 481
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$3;->val$sharedElementState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onSharedElementsReady$0$android-app-EnterTransitionCoordinator$3(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "sharedElementState"    # Landroid/os/Bundle;

    .line 488
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-static {v0, p1}, Landroid/app/EnterTransitionCoordinator;->-$$Nest$mstartSharedElementTransition(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V

    .line 489
    return-void
.end method

.method synthetic blacklist lambda$onSharedElementsReady$1$android-app-EnterTransitionCoordinator$3(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "sharedElementState"    # Landroid/os/Bundle;

    .line 487
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    new-instance v1, Landroid/app/EnterTransitionCoordinator$3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/app/EnterTransitionCoordinator$3$$ExternalSyntheticLambda1;-><init>(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/app/EnterTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    .line 490
    return-void
.end method

.method public whitelist onSharedElementsReady()V
    .locals 4

    .line 484
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 485
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 486
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator$3;->val$sharedElementState:Landroid/os/Bundle;

    new-instance v3, Landroid/app/EnterTransitionCoordinator$3$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Landroid/app/EnterTransitionCoordinator$3$$ExternalSyntheticLambda0;-><init>(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;)V

    invoke-static {v0, v1, v3}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;ZLjava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 491
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 493
    :cond_0
    return-void
.end method
