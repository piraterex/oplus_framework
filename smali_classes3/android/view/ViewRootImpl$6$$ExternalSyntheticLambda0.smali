.class public final synthetic Landroid/view/ViewRootImpl$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameCommitCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewRootImpl$6;

.field public final synthetic blacklist f$1:J


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl$6;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$6$$ExternalSyntheticLambda0;->f$0:Landroid/view/ViewRootImpl$6;

    iput-wide p2, p0, Landroid/view/ViewRootImpl$6$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final blacklist onFrameCommit(Z)V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl$6$$ExternalSyntheticLambda0;->f$0:Landroid/view/ViewRootImpl$6;

    iget-wide v1, p0, Landroid/view/ViewRootImpl$6$$ExternalSyntheticLambda0;->f$1:J

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/ViewRootImpl$6;->lambda$onFrameDraw$0$android-view-ViewRootImpl$6(JZ)V

    return-void
.end method
