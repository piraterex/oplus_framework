.class public final synthetic Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/contentcapture/MainContentCaptureSession;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/view/contentcapture/ViewNode$ViewStructureImpl;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda4;->f$0:Landroid/view/contentcapture/MainContentCaptureSession;

    iput p2, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda4;->f$2:Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda4;->f$0:Landroid/view/contentcapture/MainContentCaptureSession;

    iget v1, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda4;->f$1:I

    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda4;->f$2:Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    invoke-virtual {v0, v1, v2}, Landroid/view/contentcapture/MainContentCaptureSession;->lambda$notifyViewAppeared$5$android-view-contentcapture-MainContentCaptureSession(ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V

    return-void
.end method
