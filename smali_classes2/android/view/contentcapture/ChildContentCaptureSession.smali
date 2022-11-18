.class final Landroid/view/contentcapture/ChildContentCaptureSession;
.super Landroid/view/contentcapture/ContentCaptureSession;
.source "ChildContentCaptureSession.java"


# instance fields
.field private final blacklist mParent:Landroid/view/contentcapture/ContentCaptureSession;


# direct methods
.method protected constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/contentcapture/ContentCaptureContext;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/contentcapture/ContentCaptureSession;
    .param p2, "clientContext"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 38
    invoke-direct {p0, p2}, Landroid/view/contentcapture/ContentCaptureSession;-><init>(Landroid/view/contentcapture/ContentCaptureContext;)V

    .line 39
    iput-object p1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mParent:Landroid/view/contentcapture/ContentCaptureSession;

    .line 40
    return-void
.end method


# virtual methods
.method blacklist flush(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 59
    iget-object v0, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mParent:Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {v0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->flush(I)V

    .line 60
    return-void
.end method

.method blacklist getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;
    .locals 2

    .line 44
    iget-object v0, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mParent:Landroid/view/contentcapture/ContentCaptureSession;

    instance-of v1, v0, Landroid/view/contentcapture/MainContentCaptureSession;

    if-eqz v1, :cond_0

    .line 45
    check-cast v0, Landroid/view/contentcapture/MainContentCaptureSession;

    return-object v0

    .line 47
    :cond_0
    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    return-object v0
.end method

.method blacklist internalNotifySessionPaused()V
    .locals 1

    .line 104
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->notifySessionPaused()V

    .line 105
    return-void
.end method

.method blacklist internalNotifySessionResumed()V
    .locals 1

    .line 99
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->notifySessionResumed()V

    .line 100
    return-void
.end method

.method blacklist internalNotifyViewAppeared(Landroid/view/contentcapture/ViewNode$ViewStructureImpl;)V
    .locals 2
    .param p1, "node"    # Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    .line 74
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    iget v1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewAppeared(ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V

    .line 75
    return-void
.end method

.method blacklist internalNotifyViewDisappeared(Landroid/view/autofill/AutofillId;)V
    .locals 2
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 79
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    iget v1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewDisappeared(ILandroid/view/autofill/AutofillId;)V

    .line 80
    return-void
.end method

.method blacklist internalNotifyViewInsetsChanged(Landroid/graphics/Insets;)V
    .locals 2
    .param p1, "viewInsets"    # Landroid/graphics/Insets;

    .line 89
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    iget v1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewInsetsChanged(ILandroid/graphics/Insets;)V

    .line 90
    return-void
.end method

.method blacklist internalNotifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 84
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    iget v1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewTextChanged(ILandroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public blacklist internalNotifyViewTreeEvent(Z)V
    .locals 2
    .param p1, "started"    # Z

    .line 94
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    iget v1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewTreeEvent(IZ)V

    .line 95
    return-void
.end method

.method blacklist isContentCaptureEnabled()Z
    .locals 1

    .line 109
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    return v0
.end method

.method blacklist newChild(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;
    .locals 4
    .param p1, "clientContext"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 52
    new-instance v0, Landroid/view/contentcapture/ChildContentCaptureSession;

    invoke-direct {v0, p0, p1}, Landroid/view/contentcapture/ChildContentCaptureSession;-><init>(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/contentcapture/ContentCaptureContext;)V

    .line 53
    .local v0, "child":Landroid/view/contentcapture/ContentCaptureSession;
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    iget v3, v0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {v1, v2, v3, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyChildSessionStarted(IILandroid/view/contentcapture/ContentCaptureContext;)V

    .line 54
    return-object v0
.end method

.method blacklist onDestroy()V
    .locals 3

    .line 69
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    iget-object v1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mParent:Landroid/view/contentcapture/ContentCaptureSession;

    iget v1, v1, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    iget v2, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyChildSessionFinished(II)V

    .line 70
    return-void
.end method

.method public blacklist updateContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V
    .locals 2
    .param p1, "context"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 64
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    iget v1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyContextUpdated(ILandroid/view/contentcapture/ContentCaptureContext;)V

    .line 65
    return-void
.end method
