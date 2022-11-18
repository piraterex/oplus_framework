.class public final synthetic Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic blacklist f$0:Z

.field public final synthetic blacklist f$1:J


# direct methods
.method public synthetic constructor blacklist <init>(ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda25;->f$0:Z

    iput-wide p2, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda25;->f$1:J

    return-void
.end method


# virtual methods
.method public final blacklist run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda25;->f$0:Z

    iget-wide v1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda25;->f$1:J

    check-cast p1, Landroid/permission/IPermissionController;

    invoke-static {v0, v1, v2, p1}, Landroid/permission/PermissionControllerManager;->lambda$getPermissionUsages$21(ZJLandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
