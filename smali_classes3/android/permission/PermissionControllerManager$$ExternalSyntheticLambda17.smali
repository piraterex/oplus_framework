.class public final synthetic Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/IntConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/IntConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda17;->f$0:Ljava/util/function/IntConsumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda17;->f$0:Ljava/util/function/IntConsumer;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Landroid/permission/PermissionControllerManager;->lambda$getHibernationEligibility$37(Ljava/util/function/IntConsumer;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    return-void
.end method
