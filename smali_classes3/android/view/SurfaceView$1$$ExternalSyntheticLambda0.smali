.class public final synthetic Landroid/view/SurfaceView$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/SurfaceView$1;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/SurfaceView$1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView$1$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceView$1;

    iput-boolean p2, p0, Landroid/view/SurfaceView$1$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceView$1$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceView$1;

    iget-boolean v1, p0, Landroid/view/SurfaceView$1$$ExternalSyntheticLambda0;->f$1:Z

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView$1;->lambda$setKeepScreenOn$0$android-view-SurfaceView$1(Z)V

    return-void
.end method
