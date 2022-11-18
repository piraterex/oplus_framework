.class public final synthetic Landroid/view/View$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$1:Landroid/view/displayhash/DisplayHashResultCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/view/displayhash/DisplayHashResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/View$$ExternalSyntheticLambda11;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/view/View$$ExternalSyntheticLambda11;->f$1:Landroid/view/displayhash/DisplayHashResultCallback;

    return-void
.end method


# virtual methods
.method public final whitelist onResult(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/view/View$$ExternalSyntheticLambda11;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/view/View$$ExternalSyntheticLambda11;->f$1:Landroid/view/displayhash/DisplayHashResultCallback;

    invoke-static {v0, v1, p1}, Landroid/view/View;->lambda$generateDisplayHash$7(Ljava/util/concurrent/Executor;Landroid/view/displayhash/DisplayHashResultCallback;Landroid/os/Bundle;)V

    return-void
.end method
