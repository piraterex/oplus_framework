.class public final synthetic Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ScrollCaptureConnection;

.field public final synthetic blacklist f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ScrollCaptureConnection;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda2;->f$0:Landroid/view/ScrollCaptureConnection;

    iput-object p2, p0, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda2;->f$0:Landroid/view/ScrollCaptureConnection;

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ScrollCaptureConnection;->lambda$endCapture$2$android-view-ScrollCaptureConnection(Ljava/lang/Runnable;)V

    return-void
.end method
