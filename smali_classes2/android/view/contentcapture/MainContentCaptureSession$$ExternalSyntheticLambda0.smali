.class public final synthetic Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/contentcapture/MainContentCaptureSession;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/view/autofill/AutofillId;

.field public final synthetic blacklist f$3:Ljava/lang/CharSequence;

.field public final synthetic blacklist f$4:I

.field public final synthetic blacklist f$5:I

.field public final synthetic blacklist f$6:I

.field public final synthetic blacklist f$7:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/view/autofill/AutofillId;Ljava/lang/CharSequence;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;->f$0:Landroid/view/contentcapture/MainContentCaptureSession;

    iput p2, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;->f$2:Landroid/view/autofill/AutofillId;

    iput-object p4, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;->f$3:Ljava/lang/CharSequence;

    iput p5, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;->f$4:I

    iput p6, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;->f$5:I

    iput p7, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;->f$6:I

    iput p8, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;->f$7:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 8

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;->f$0:Landroid/view/contentcapture/MainContentCaptureSession;

    iget v1, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;->f$2:Landroid/view/autofill/AutofillId;

    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;->f$3:Ljava/lang/CharSequence;

    iget v4, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;->f$4:I

    iget v5, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;->f$5:I

    iget v6, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;->f$6:I

    iget v7, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;->f$7:I

    invoke-virtual/range {v0 .. v7}, Landroid/view/contentcapture/MainContentCaptureSession;->lambda$notifyViewTextChanged$7$android-view-contentcapture-MainContentCaptureSession(ILandroid/view/autofill/AutofillId;Ljava/lang/CharSequence;IIII)V

    return-void
.end method
