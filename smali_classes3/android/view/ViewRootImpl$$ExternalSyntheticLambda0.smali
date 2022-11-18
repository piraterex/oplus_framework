.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/SurfaceSyncer$SyncBufferCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda0;->f$0:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda0;->f$0:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->lambda$performDraw$7(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V

    return-void
.end method
