.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewRootImpl;

.field public final synthetic blacklist f$1:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda1;->f$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda1;->f$1:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final blacklist onFrameDraw(J)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda1;->f$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda1;->f$1:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/ViewRootImpl;->lambda$applyTransactionOnDraw$10$android-view-ViewRootImpl(Landroid/view/SurfaceControl$Transaction;J)V

    return-void
.end method
