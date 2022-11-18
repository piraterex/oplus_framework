.class Landroid/app/ExitTransitionCoordinator$8;
.super Ljava/lang/Object;
.source "ExitTransitionCoordinator.java"

# interfaces
.implements Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->notifyComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ExitTransitionCoordinator;

.field final synthetic blacklist val$resultReceiver:Landroid/os/ResultReceiver;

.field final synthetic blacklist val$sharedElementBundle:Landroid/os/Bundle;


# direct methods
.method constructor blacklist <init>(Landroid/app/ExitTransitionCoordinator;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ExitTransitionCoordinator;

    .line 444
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    iput-object p2, p0, Landroid/app/ExitTransitionCoordinator$8;->val$resultReceiver:Landroid/os/ResultReceiver;

    iput-object p3, p0, Landroid/app/ExitTransitionCoordinator$8;->val$sharedElementBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSharedElementsReady()V
    .locals 3

    .line 447
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->val$resultReceiver:Landroid/os/ResultReceiver;

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator$8;->val$sharedElementBundle:Landroid/os/Bundle;

    const/16 v2, 0x67

    invoke-virtual {v0, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 449
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-$$Nest$mnotifyExitComplete(Landroid/app/ExitTransitionCoordinator;)V

    .line 450
    return-void
.end method
