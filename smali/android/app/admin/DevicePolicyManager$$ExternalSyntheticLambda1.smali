.class public final synthetic Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final whitelist onResult(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0, p1}, Landroid/app/admin/DevicePolicyManager;->lambda$setPermissionGrantState$7(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V

    return-void
.end method
