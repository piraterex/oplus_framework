.class public final synthetic Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/List;

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda24;->f$0:Ljava/util/List;

    iput-object p2, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda24;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda24;->f$0:Ljava/util/List;

    iget-object v1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda24;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1, p2}, Landroid/permission/PermissionControllerManager;->lambda$revokeSelfPermissionsOnKill$39(Ljava/util/List;Ljava/lang/String;Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method
