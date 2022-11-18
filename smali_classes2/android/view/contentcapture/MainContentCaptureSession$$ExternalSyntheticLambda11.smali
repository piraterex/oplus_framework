.class public final synthetic Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/contentcapture/MainContentCaptureSession;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/contentcapture/MainContentCaptureSession;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda11;->f$0:Landroid/view/contentcapture/MainContentCaptureSession;

    iput p2, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda11;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda11;->f$0:Landroid/view/contentcapture/MainContentCaptureSession;

    iget v1, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda11;->f$1:I

    invoke-virtual {v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->lambda$scheduleFlush$2$android-view-contentcapture-MainContentCaptureSession(I)V

    return-void
.end method
