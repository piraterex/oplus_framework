.class public final synthetic Landroid/window/SurfaceSyncer$SyncSet$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Consumer;

.field public final synthetic blacklist f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/SurfaceSyncer$SyncSet$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Landroid/window/SurfaceSyncer$SyncSet$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/window/SurfaceSyncer$SyncSet$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, v1, p1}, Landroid/window/SurfaceSyncer$SyncSet;->lambda$updateCallback$0(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
