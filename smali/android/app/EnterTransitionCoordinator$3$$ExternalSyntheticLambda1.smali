.class public final synthetic Landroid/app/EnterTransitionCoordinator$3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/EnterTransitionCoordinator$3;

.field public final synthetic blacklist f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$3$$ExternalSyntheticLambda1;->f$0:Landroid/app/EnterTransitionCoordinator$3;

    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$3$$ExternalSyntheticLambda1;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$3$$ExternalSyntheticLambda1;->f$0:Landroid/app/EnterTransitionCoordinator$3;

    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$3$$ExternalSyntheticLambda1;->f$1:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/EnterTransitionCoordinator$3;->lambda$onSharedElementsReady$0$android-app-EnterTransitionCoordinator$3(Landroid/os/Bundle;)V

    return-void
.end method
