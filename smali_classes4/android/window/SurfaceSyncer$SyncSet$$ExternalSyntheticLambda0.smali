.class public final synthetic Landroid/window/SurfaceSyncer$SyncSet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/SurfaceSyncer$SyncSet;

.field public final synthetic blacklist f$1:Landroid/window/SurfaceSyncer$SyncSet;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/SurfaceSyncer$SyncSet;Landroid/window/SurfaceSyncer$SyncSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/SurfaceSyncer$SyncSet$$ExternalSyntheticLambda0;->f$0:Landroid/window/SurfaceSyncer$SyncSet;

    iput-object p2, p0, Landroid/window/SurfaceSyncer$SyncSet$$ExternalSyntheticLambda0;->f$1:Landroid/window/SurfaceSyncer$SyncSet;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet$$ExternalSyntheticLambda0;->f$0:Landroid/window/SurfaceSyncer$SyncSet;

    iget-object v1, p0, Landroid/window/SurfaceSyncer$SyncSet$$ExternalSyntheticLambda0;->f$1:Landroid/window/SurfaceSyncer$SyncSet;

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1, p1}, Landroid/window/SurfaceSyncer$SyncSet;->lambda$merge$1$android-window-SurfaceSyncer$SyncSet(Landroid/window/SurfaceSyncer$SyncSet;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
