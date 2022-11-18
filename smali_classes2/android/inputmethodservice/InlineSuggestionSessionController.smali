.class Landroid/inputmethodservice/InlineSuggestionSessionController;
.super Ljava/lang/Object;
.source "InlineSuggestionSessionController.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InlineSuggestionSessionController"


# instance fields
.field private final blacklist mHostInputTokenSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImeClientFieldId:Landroid/view/autofill/AutofillId;

.field private blacklist mImeClientPackageName:Ljava/lang/String;

.field private blacklist mImeInputStarted:Z

.field private blacklist mImeInputViewStarted:Z

.field private final blacklist mMainThreadHandler:Landroid/os/Handler;

.field private final blacklist mRequestSupplier:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mResponseConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSession:Landroid/inputmethodservice/InlineSuggestionSession;


# direct methods
.method constructor blacklist <init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsResponse;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "requestSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/Bundle;Landroid/view/inputmethod/InlineSuggestionsRequest;>;"
    .local p2, "hostInputTokenSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/os/IBinder;>;"
    .local p3, "responseConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/InlineSuggestionsResponse;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mMainThreadHandler:Landroid/os/Handler;

    .line 86
    iput-object p1, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mRequestSupplier:Ljava/util/function/Function;

    .line 87
    iput-object p2, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mHostInputTokenSupplier:Ljava/util/function/Supplier;

    .line 88
    iput-object p3, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mResponseConsumer:Ljava/util/function/Consumer;

    .line 89
    return-void
.end method

.method private static blacklist match(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)Z
    .locals 2
    .param p0, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p1, "imeClientFieldId"    # Landroid/view/autofill/AutofillId;

    .line 259
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0
.end method

.method private static blacklist match(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Ljava/lang/String;Landroid/view/autofill/AutofillId;)Z
    .locals 2
    .param p0, "inlineSuggestionsRequestInfo"    # Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .param p1, "imeClientPackageName"    # Ljava/lang/String;
    .param p2, "imeClientFieldId"    # Landroid/view/autofill/AutofillId;

    .line 244
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/InlineSuggestionsRequestInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/view/InlineSuggestionsRequestInfo;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 248
    :goto_0
    return v0

    .line 246
    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method blacklist match(Landroid/view/autofill/AutofillId;)Z
    .locals 1
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 238
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    invoke-static {p1, v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)Z

    move-result v0

    return v0
.end method

.method blacklist match(Lcom/android/internal/view/InlineSuggestionsRequestInfo;)Z
    .locals 2
    .param p1, "requestInfo"    # Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    .line 230
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    invoke-static {p1, v0, v1}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Ljava/lang/String;Landroid/view/autofill/AutofillId;)Z

    move-result v0

    return v0
.end method

.method blacklist notifyOnFinishInput()V
    .locals 4

    .line 211
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    const-string v1, "InlineSuggestionSessionController"

    if-eqz v0, :cond_0

    const-string v0, "notifyOnFinishInput"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientPackageName:Ljava/lang/String;

    .line 213
    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputViewStarted:Z

    .line 215
    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputStarted:Z

    .line 216
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInputMethodFinishInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInputMethodFinishInput() remote exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method blacklist notifyOnFinishInputView()V
    .locals 4

    .line 194
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    const-string v1, "InlineSuggestionSessionController"

    if-eqz v0, :cond_0

    const-string v0, "notifyOnFinishInputView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputViewStarted:Z

    .line 196
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInputMethodFinishInputView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInputMethodFinishInputView() remote exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method blacklist notifyOnShowInputRequested(Z)V
    .locals 4
    .param p1, "requestResult"    # Z

    .line 159
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    const-string v1, "InlineSuggestionSessionController"

    if-eqz v0, :cond_0

    const-string v0, "notifyShowInputRequested"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInputMethodShowInputRequested(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInputMethodShowInputRequested() remote exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method blacklist notifyOnStartInput(Ljava/lang/String;Landroid/view/autofill/AutofillId;)V
    .locals 4
    .param p1, "imeClientPackageName"    # Ljava/lang/String;
    .param p2, "imeFieldId"    # Landroid/view/autofill/AutofillId;

    .line 128
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    const-string v1, "InlineSuggestionSessionController"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOnStartInput: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputStarted:Z

    .line 133
    iput-object p1, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientPackageName:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    .line 136
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_3

    .line 137
    sget-object v2, Landroid/inputmethodservice/InlineSuggestionSession;->EMPTY_RESPONSE:Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/InlineSuggestionSession;->consumeInlineSuggestionsResponse(Landroid/view/inputmethod/InlineSuggestionsResponse;)V

    .line 140
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->isCallbackInvoked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestInfo()Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Lcom/android/internal/view/InlineSuggestionsRequestInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->makeInlineSuggestionRequestUncheck()V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    move-result-object v0

    iget-object v2, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v2}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInputMethodStartInput(Landroid/view/autofill/AutofillId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInputMethodStartInput() remote exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    return-void

    .line 130
    :cond_4
    :goto_1
    return-void
.end method

.method blacklist notifyOnStartInputView()V
    .locals 4

    .line 176
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    const-string v1, "InlineSuggestionSessionController"

    if-eqz v0, :cond_0

    const-string v0, "notifyOnStartInputView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputViewStarted:Z

    .line 178
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInputMethodStartInputView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInputMethodStartInputView() remote exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method blacklist onMakeInlineSuggestionsRequest(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
    .locals 10
    .param p1, "requestInfo"    # Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .param p2, "callback"    # Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    .line 98
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    const-string v1, "InlineSuggestionSessionController"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMakeInlineSuggestionsRequest: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->invalidate()V

    .line 103
    :cond_1
    new-instance v0, Landroid/inputmethodservice/InlineSuggestionSession;

    iget-object v5, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mRequestSupplier:Ljava/util/function/Function;

    iget-object v6, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mHostInputTokenSupplier:Ljava/util/function/Supplier;

    iget-object v7, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mResponseConsumer:Ljava/util/function/Consumer;

    iget-object v9, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mMainThreadHandler:Landroid/os/Handler;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v8, p0

    invoke-direct/range {v2 .. v9}, Landroid/inputmethodservice/InlineSuggestionSession;-><init>(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Consumer;Landroid/inputmethodservice/InlineSuggestionSessionController;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    .line 108
    iget-boolean v2, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputStarted:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestInfo()Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Lcom/android/internal/view/InlineSuggestionsRequestInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->makeInlineSuggestionRequestUncheck()V

    .line 111
    iget-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputViewStarted:Z

    if-eqz v0, :cond_2

    .line 113
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInputMethodStartInputView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInputMethodStartInputView() remote exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method
