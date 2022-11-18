.class final Landroid/view/autofill/AutofillManager$AutofillManagerClient;
.super Landroid/view/autofill/IAutoFillManagerClient$Stub;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AutofillManagerClient"
.end annotation


# instance fields
.field private final greylist-max-o mAfm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/autofill/AutofillManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>(Landroid/view/autofill/AutofillManager;)V
    .locals 1
    .param p1, "autofillManager"    # Landroid/view/autofill/AutofillManager;

    .line 3793
    invoke-direct {p0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;-><init>()V

    .line 3794
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    .line 3795
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillManager$AutofillManagerClient-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;-><init>(Landroid/view/autofill/AutofillManager;)V

    return-void
.end method

.method static synthetic blacklist lambda$authenticate$3(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .locals 0
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "authenticationId"    # I
    .param p3, "intent"    # Landroid/content/IntentSender;
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "authenticateInline"    # Z

    .line 3827
    invoke-static/range {p0 .. p5}, Landroid/view/autofill/AutofillManager;->-$$Nest$mauthenticate(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$autofill$1(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V
    .locals 0
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "ids"    # Ljava/util/List;
    .param p3, "values"    # Ljava/util/List;
    .param p4, "hideHighlight"    # Z

    .line 3810
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->-$$Nest$mautofill(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$autofillContent$2(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V
    .locals 0
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "content"    # Landroid/content/ClipData;

    .line 3818
    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->-$$Nest$mautofillContent(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchUnhandledKey$10(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .locals 0
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "fullScreen"    # Landroid/view/KeyEvent;

    .line 3891
    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->-$$Nest$mdispatchUnhandledKey(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic blacklist lambda$getAugmentedAutofillClient$15(Landroid/view/autofill/AutofillManager;Lcom/android/internal/os/IResultReceiver;)V
    .locals 0
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;

    .line 3940
    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mgetAugmentedAutofillClient(Landroid/view/autofill/AutofillManager;Lcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyDisableAutofill$9(Landroid/view/autofill/AutofillManager;JLandroid/content/ComponentName;)V
    .locals 0
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "disableDuration"    # J
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 3883
    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->-$$Nest$mnotifyDisableAutofill(Landroid/view/autofill/AutofillManager;JLandroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyFillDialogTriggerIds$17(Landroid/view/autofill/AutofillManager;Ljava/util/List;)V
    .locals 0
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "ids"    # Ljava/util/List;

    .line 3955
    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager;->-$$Nest$msetFillDialogTriggerIds(Landroid/view/autofill/AutofillManager;Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyFillUiHidden$8(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;)V
    .locals 1
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;

    .line 3873
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$mnotifyCallback(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyFillUiShown$7(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;)V
    .locals 1
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;

    .line 3863
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$mnotifyCallback(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyNoFillUi$6(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V
    .locals 0
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "sessionFinishedState"    # I

    .line 3854
    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->-$$Nest$mnotifyNoFillUi(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method static synthetic blacklist lambda$requestHideFillUi$5(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .locals 1
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 3846
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$mrequestHideFillUi(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$requestShowFillUi$4(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 0
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "anchorBounds"    # Landroid/graphics/Rect;
    .param p6, "presenter"    # Landroid/view/autofill/IAutofillWindowPresenter;

    .line 3837
    invoke-static/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->-$$Nest$mrequestShowFillUi(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestShowSoftInput$16(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .locals 0
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 3948
    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mrequestShowSoftInput(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static synthetic blacklist lambda$setSaveUiState$13(Landroid/view/autofill/AutofillManager;IZ)V
    .locals 0
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "shown"    # Z

    .line 3924
    invoke-static {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->-$$Nest$msetSaveUiState(Landroid/view/autofill/AutofillManager;IZ)V

    return-void
.end method

.method static synthetic blacklist lambda$setSessionFinished$14(Landroid/view/autofill/AutofillManager;ILjava/util/List;)V
    .locals 0
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "newState"    # I
    .param p2, "autofillableIds"    # Ljava/util/List;

    .line 3932
    invoke-static {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->-$$Nest$msetSessionFinished(Landroid/view/autofill/AutofillManager;ILjava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$setState$0(Landroid/view/autofill/AutofillManager;I)V
    .locals 0
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "flags"    # I

    .line 3801
    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager;->-$$Nest$msetState(Landroid/view/autofill/AutofillManager;I)V

    return-void
.end method

.method static synthetic blacklist lambda$setTrackedViews$12(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    .locals 0
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "ids"    # [Landroid/view/autofill/AutofillId;
    .param p3, "saveOnAllViewsInvisible"    # Z
    .param p4, "saveOnFinish"    # Z
    .param p5, "fillableIds"    # [Landroid/view/autofill/AutofillId;
    .param p6, "saveTriggerId"    # Landroid/view/autofill/AutofillId;

    .line 3915
    invoke-static/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->-$$Nest$msetTrackedViews(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static synthetic blacklist lambda$startIntentSender$11(Landroid/view/autofill/AutofillManager;Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 6
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "intentSender"    # Landroid/content/IntentSender;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3901
    :try_start_0
    invoke-static {p0}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmContext(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3904
    goto :goto_0

    .line 3902
    :catch_0
    move-exception v0

    .line 3903
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startIntentSender() failed for intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3905
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .locals 9
    .param p1, "sessionId"    # I
    .param p2, "authenticationId"    # I
    .param p3, "intent"    # Landroid/content/IntentSender;
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "authenticateInline"    # Z

    .line 3825
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 3826
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_0

    .line 3827
    new-instance v8, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda3;-><init>(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    invoke-static {v0, v8}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 3830
    :cond_0
    return-void
.end method

.method public blacklist autofill(ILjava/util/List;Ljava/util/List;Z)V
    .locals 8
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

    .line 3808
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 3809
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_0

    .line 3810
    new-instance v7, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda2;

    move-object v1, v7

    move-object v2, v0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda2;-><init>(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V

    invoke-static {v0, v7}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 3812
    :cond_0
    return-void
.end method

.method public blacklist autofillContent(ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "content"    # Landroid/content/ClipData;

    .line 3816
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 3817
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_0

    .line 3818
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda8;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 3820
    :cond_0
    return-void
.end method

.method public greylist-max-o dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "fullScreen"    # Landroid/view/KeyEvent;

    .line 3889
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 3890
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_0

    .line 3891
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda6;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 3893
    :cond_0
    return-void
.end method

.method public blacklist getAugmentedAutofillClient(Lcom/android/internal/os/IResultReceiver;)V
    .locals 2
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;

    .line 3938
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 3939
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_0

    .line 3940
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0, p1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda10;-><init>(Landroid/view/autofill/AutofillManager;Lcom/android/internal/os/IResultReceiver;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 3942
    :cond_0
    return-void
.end method

.method public blacklist notifyDisableAutofill(JLandroid/content/ComponentName;)V
    .locals 2
    .param p1, "disableDuration"    # J
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3881
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 3882
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_0

    .line 3883
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda9;-><init>(Landroid/view/autofill/AutofillManager;JLandroid/content/ComponentName;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 3885
    :cond_0
    return-void
.end method

.method public blacklist notifyFillDialogTriggerIds(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 3953
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 3954
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_0

    .line 3955
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda4;-><init>(Landroid/view/autofill/AutofillManager;Ljava/util/List;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 3957
    :cond_0
    return-void
.end method

.method public blacklist notifyFillUiHidden(ILandroid/view/autofill/AutofillId;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;

    .line 3870
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 3871
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_0

    .line 3872
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda15;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda15;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 3876
    :cond_0
    return-void
.end method

.method public blacklist notifyFillUiShown(ILandroid/view/autofill/AutofillId;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;

    .line 3860
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 3861
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_0

    .line 3862
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda17;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda17;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 3866
    :cond_0
    return-void
.end method

.method public greylist-max-o notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "sessionFinishedState"    # I

    .line 3852
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 3853
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_0

    .line 3854
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda12;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 3856
    :cond_0
    return-void
.end method

.method public greylist-max-o requestHideFillUi(ILandroid/view/autofill/AutofillId;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;

    .line 3844
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 3845
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_0

    .line 3846
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0, p2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda11;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 3848
    :cond_0
    return-void
.end method

.method public greylist-max-o requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 11
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "anchorBounds"    # Landroid/graphics/Rect;
    .param p6, "presenter"    # Landroid/view/autofill/IAutofillWindowPresenter;

    .line 3835
    move-object v0, p0

    iget-object v1, v0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;

    .line 3836
    .local v1, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v1, :cond_0

    .line 3837
    new-instance v10, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda14;

    move-object v2, v10

    move-object v3, v1

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda14;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    invoke-static {v1, v10}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 3840
    :cond_0
    return-void
.end method

.method public blacklist requestShowSoftInput(Landroid/view/autofill/AutofillId;)V
    .locals 2
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 3946
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 3947
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_0

    .line 3948
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda1;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 3950
    :cond_0
    return-void
.end method

.method public greylist-max-o setSaveUiState(IZ)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "shown"    # Z

    .line 3922
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 3923
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_0

    .line 3924
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda16;-><init>(Landroid/view/autofill/AutofillManager;IZ)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 3926
    :cond_0
    return-void
.end method

.method public blacklist setSessionFinished(ILjava/util/List;)V
    .locals 2
    .param p1, "newState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 3930
    .local p2, "autofillableIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 3931
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_0

    .line 3932
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;-><init>(Landroid/view/autofill/AutofillManager;ILjava/util/List;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 3934
    :cond_0
    return-void
.end method

.method public greylist-max-o setState(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 3799
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 3800
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_0

    .line 3801
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0, p1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda13;-><init>(Landroid/view/autofill/AutofillManager;I)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 3803
    :cond_0
    return-void
.end method

.method public greylist-max-o setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    .locals 11
    .param p1, "sessionId"    # I
    .param p2, "ids"    # [Landroid/view/autofill/AutofillId;
    .param p3, "saveOnAllViewsInvisible"    # Z
    .param p4, "saveOnFinish"    # Z
    .param p5, "fillableIds"    # [Landroid/view/autofill/AutofillId;
    .param p6, "saveTriggerId"    # Landroid/view/autofill/AutofillId;

    .line 3913
    move-object v0, p0

    iget-object v1, v0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;

    .line 3914
    .local v1, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v1, :cond_0

    .line 3915
    new-instance v10, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda5;

    move-object v2, v10

    move-object v3, v1

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda5;-><init>(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V

    invoke-static {v1, v10}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 3918
    :cond_0
    return-void
.end method

.method public greylist-max-o startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 2
    .param p1, "intentSender"    # Landroid/content/IntentSender;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3897
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 3898
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_0

    .line 3899
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda0;-><init>(Landroid/view/autofill/AutofillManager;Landroid/content/IntentSender;Landroid/content/Intent;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 3907
    :cond_0
    return-void
.end method
