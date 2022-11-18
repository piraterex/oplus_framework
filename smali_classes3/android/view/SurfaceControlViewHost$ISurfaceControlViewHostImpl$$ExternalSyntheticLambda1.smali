.class public final synthetic Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;

.field public final synthetic blacklist f$1:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda1;->f$0:Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;

    iput-object p2, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda1;->f$1:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda1;->f$0:Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda1;->f$1:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->lambda$onConfigurationChanged$0$android-view-SurfaceControlViewHost$ISurfaceControlViewHostImpl(Landroid/content/res/Configuration;)V

    return-void
.end method
