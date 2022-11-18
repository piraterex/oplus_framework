.class Landroid/inputmethodservice/InlineSuggestionSession;
.super Ljava/lang/Object;
.source "InlineSuggestionSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;
    }
.end annotation


# static fields
.field static final blacklist EMPTY_RESPONSE:Landroid/view/inputmethod/InlineSuggestionsResponse;

.field private static final blacklist TAG:Ljava/lang/String; = "ImsInlineSuggestionSession"


# instance fields
.field private final blacklist mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

.field private blacklist mCallbackInvoked:Z

.field private final blacklist mHostInputTokenSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

.field private final blacklist mMainThreadHandler:Landroid/os/Handler;

.field private blacklist mPreviousResponseIsEmpty:Ljava/lang/Boolean;

.field private final blacklist mRequestInfo:Lcom/android/internal/view/InlineSuggestionsRequestInfo;

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

.field private blacklist mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

.field private final blacklist mResponseConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMainThreadHandler(Landroid/inputmethodservice/InlineSuggestionSession;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Landroid/view/inputmethod/InlineSuggestionsResponse;

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/inputmethod/InlineSuggestionsResponse;-><init>(Ljava/util/List;)V

    sput-object v0, Landroid/inputmethodservice/InlineSuggestionSession;->EMPTY_RESPONSE:Landroid/view/inputmethod/InlineSuggestionsResponse;

    .line 62
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Consumer;Landroid/inputmethodservice/InlineSuggestionSessionController;Landroid/os/Handler;)V
    .locals 1
    .param p1, "requestInfo"    # Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .param p2, "callback"    # Lcom/android/internal/view/IInlineSuggestionsRequestCallback;
    .param p6, "inlineSuggestionSessionController"    # Landroid/inputmethodservice/InlineSuggestionSessionController;
    .param p7, "mainThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/view/InlineSuggestionsRequestInfo;",
            "Lcom/android/internal/view/IInlineSuggestionsRequestCallback;",
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsResponse;",
            ">;",
            "Landroid/inputmethodservice/InlineSuggestionSessionController;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 100
    .local p3, "requestSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/Bundle;Landroid/view/inputmethod/InlineSuggestionsRequest;>;"
    .local p4, "hostInputTokenSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/os/IBinder;>;"
    .local p5, "responseConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/InlineSuggestionsResponse;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallbackInvoked:Z

    .line 101
    iput-object p1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mRequestInfo:Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    .line 102
    iput-object p2, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    .line 103
    iput-object p3, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mRequestSupplier:Ljava/util/function/Function;

    .line 104
    iput-object p4, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mHostInputTokenSupplier:Ljava/util/function/Supplier;

    .line 105
    iput-object p5, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseConsumer:Ljava/util/function/Consumer;

    .line 106
    iput-object p6, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    .line 107
    iput-object p7, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 108
    return-void
.end method


# virtual methods
.method blacklist consumeInlineSuggestionsResponse(Landroid/view/inputmethod/InlineSuggestionsResponse;)V
    .locals 3
    .param p1, "response"    # Landroid/view/inputmethod/InlineSuggestionsResponse;

    .line 210
    invoke-virtual {p1}, Landroid/view/inputmethod/InlineSuggestionsResponse;->getInlineSuggestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 211
    .local v0, "isResponseEmpty":Z
    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mPreviousResponseIsEmpty:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    return-void

    .line 215
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mPreviousResponseIsEmpty:Ljava/lang/Boolean;

    .line 216
    iget-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseConsumer:Ljava/util/function/Consumer;

    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method blacklist getRequestCallback()Lcom/android/internal/view/IInlineSuggestionsRequestCallback;
    .locals 1

    .line 117
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    return-object v0
.end method

.method blacklist getRequestInfo()Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .locals 1

    .line 112
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mRequestInfo:Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    return-object v0
.end method

.method blacklist handleOnInlineSuggestionsResponse(Landroid/view/autofill/AutofillId;Landroid/view/inputmethod/InlineSuggestionsResponse;)V
    .locals 2
    .param p1, "fieldId"    # Landroid/view/autofill/AutofillId;
    .param p2, "response"    # Landroid/view/inputmethod/InlineSuggestionsResponse;

    .line 199
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Landroid/view/autofill/AutofillId;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    return-void

    .line 202
    :cond_0
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IME receives response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/inputmethod/InlineSuggestionsResponse;->getInlineSuggestions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsInlineSuggestionSession"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1
    invoke-virtual {p0, p2}, Landroid/inputmethodservice/InlineSuggestionSession;->consumeInlineSuggestionsResponse(Landroid/view/inputmethod/InlineSuggestionsResponse;)V

    .line 206
    return-void
.end method

.method blacklist invalidate()V
    .locals 3

    .line 153
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    invoke-interface {v0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInlineSuggestionsSessionInvalidated()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsInlineSuggestionSession"

    const-string v2, "onInlineSuggestionsSessionInvalidated() remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Landroid/inputmethodservice/InlineSuggestionSession;->EMPTY_RESPONSE:Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InlineSuggestionSession;->consumeInlineSuggestionsResponse(Landroid/view/inputmethod/InlineSuggestionsResponse;)V

    .line 159
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;->invalidate()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    .line 162
    :cond_0
    return-void
.end method

.method blacklist isCallbackInvoked()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallbackInvoked:Z

    return v0
.end method

.method blacklist makeInlineSuggestionRequestUncheck()V
    .locals 4

    .line 173
    const-string v0, "ImsInlineSuggestionSession"

    iget-boolean v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallbackInvoked:Z

    if-eqz v1, :cond_0

    .line 174
    return-void

    .line 177
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mRequestSupplier:Ljava/util/function/Function;

    iget-object v2, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mRequestInfo:Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    .line 178
    invoke-virtual {v2}, Lcom/android/internal/view/InlineSuggestionsRequestInfo;->getUiExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 177
    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 179
    .local v1, "request":Landroid/view/inputmethod/InlineSuggestionsRequest;
    if-nez v1, :cond_2

    .line 180
    sget-boolean v2, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 181
    const-string v2, "onCreateInlineSuggestionsRequest() returned null request"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_1
    iget-object v2, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    invoke-interface {v2}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInlineSuggestionsUnsupported()V

    goto :goto_0

    .line 185
    :cond_2
    iget-object v2, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mHostInputTokenSupplier:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InlineSuggestionsRequest;->setHostInputToken(Landroid/os/IBinder;)V

    .line 186
    invoke-virtual {v1}, Landroid/view/inputmethod/InlineSuggestionsRequest;->filterContentTypes()V

    .line 187
    new-instance v2, Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;-><init>(Landroid/inputmethodservice/InlineSuggestionSession;Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl-IA;)V

    iput-object v2, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    .line 188
    iget-object v3, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    invoke-interface {v3, v1, v2}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInlineSuggestionsRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v1    # "request":Landroid/view/inputmethod/InlineSuggestionsRequest;
    :goto_0
    goto :goto_1

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeInlinedSuggestionsRequest() remote exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallbackInvoked:Z

    .line 194
    return-void
.end method

.method blacklist shouldSendImeStatus()Z
    .locals 1

    .line 128
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
