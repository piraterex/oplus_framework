.class public Landroid/view/autofill/IAutoFillManagerClient$Default;
.super Ljava/lang/Object;
.source "IAutoFillManagerClient.java"

# interfaces
.implements Landroid/view/autofill/IAutoFillManagerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/IAutoFillManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "authenticationId"    # I
    .param p3, "intent"    # Landroid/content/IntentSender;
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "authenticateInline"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist autofill(ILjava/util/List;Ljava/util/List;Z)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p4, "hideHighlight"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    return-void
.end method

.method public blacklist autofillContent(ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "content"    # Landroid/content/ClipData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method public blacklist getAugmentedAutofillClient(Lcom/android/internal/os/IResultReceiver;)V
    .locals 0
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    return-void
.end method

.method public blacklist notifyDisableAutofill(JLandroid/content/ComponentName;)V
    .locals 0
    .param p1, "disableDuration"    # J
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    return-void
.end method

.method public blacklist notifyFillDialogTriggerIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    return-void
.end method

.method public blacklist notifyFillUiHidden(ILandroid/view/autofill/AutofillId;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public blacklist notifyFillUiShown(ILandroid/view/autofill/AutofillId;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "sessionFinishedState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist requestHideFillUi(ILandroid/view/autofill/AutofillId;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "anchorBounds"    # Landroid/graphics/Rect;
    .param p6, "presenter"    # Landroid/view/autofill/IAutofillWindowPresenter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist requestShowSoftInput(Landroid/view/autofill/AutofillId;)V
    .locals 0
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    return-void
.end method

.method public blacklist setSaveUiState(IZ)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "shown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    return-void
.end method

.method public blacklist setSessionFinished(ILjava/util/List;)V
    .locals 0
    .param p1, "newState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    .local p2, "autofillableIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    return-void
.end method

.method public blacklist setState(I)V
    .locals 0
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "savableIds"    # [Landroid/view/autofill/AutofillId;
    .param p3, "saveOnAllViewsInvisible"    # Z
    .param p4, "saveOnFinish"    # Z
    .param p5, "fillableIds"    # [Landroid/view/autofill/AutofillId;
    .param p6, "saveTriggerId"    # Landroid/view/autofill/AutofillId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intentSender"    # Landroid/content/IntentSender;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    return-void
.end method
