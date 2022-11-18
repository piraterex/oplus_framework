.class public final synthetic Landroid/window/SurfaceSyncer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Runnable;

.field public final synthetic blacklist f$1:Landroid/os/Handler;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/SurfaceSyncer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    iput-object p2, p0, Landroid/window/SurfaceSyncer$$ExternalSyntheticLambda0;->f$1:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/window/SurfaceSyncer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    iget-object v1, p0, Landroid/window/SurfaceSyncer$$ExternalSyntheticLambda0;->f$1:Landroid/os/Handler;

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, v1, p1}, Landroid/window/SurfaceSyncer;->lambda$setupSync$0(Ljava/lang/Runnable;Landroid/os/Handler;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
