.class final Landroid/inputmethodservice/RemoteInputConnection;
.super Ljava/lang/Object;
.source "RemoteInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;
    }
.end annotation


# static fields
.field private static final blacklist MAX_WAIT_TIME_MILLIS:I = 0x7d0

.field private static final blacklist TAG:Ljava/lang/String; = "RemoteInputConnection"


# instance fields
.field private final blacklist mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

.field private final blacklist mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

.field private final blacklist mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/RemoteInputConnection;I)V
    .locals 1
    .param p1, "original"    # Landroid/inputmethodservice/RemoteInputConnection;
    .param p2, "sessionId"    # I

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iget-object v0, p1, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    iput-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    .line 113
    iget-object v0, p1, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->cloneWithSessionId(I)Lcom/android/internal/inputmethod/IInputContextInvoker;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    .line 114
    iget-object v0, p1, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    iput-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 115
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/CancellationGroup;)V
    .locals 2
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "cancellationGroup"    # Lcom/android/internal/inputmethod/CancellationGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/inputmethodservice/InputMethodServiceInternal;",
            ">;",
            "Lcom/android/internal/view/IInputContext;",
            "Lcom/android/internal/inputmethod/CancellationGroup;",
            ")V"
        }
    .end annotation

    .line 100
    .local p1, "inputMethodService":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/inputmethodservice/InputMethodServiceInternal;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;-><init>(Ljava/lang/ref/WeakReference;Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder-IA;)V

    iput-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    .line 102
    invoke-static {p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->create(Lcom/android/internal/view/IInputContext;)Lcom/android/internal/inputmethod/IInputContextInvoker;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    .line 103
    iput-object p3, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 104
    return-void
.end method

.method private blacklist notifyUserActionIfNecessary()V
    .locals 1

    .line 299
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v0}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v0

    .line 300
    .local v0, "imsInternal":Landroid/inputmethodservice/InputMethodServiceInternal;
    if-nez v0, :cond_0

    .line 301
    return-void

    .line 303
    :cond_0
    invoke-interface {v0}, Landroid/inputmethodservice/InputMethodServiceInternal;->notifyUserActionIfNecessary()V

    .line 304
    return-void
.end method


# virtual methods
.method public whitelist beginBatchEdit()Z
    .locals 1

    .line 367
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public whitelist clearMetaKeyStates(I)Z
    .locals 1
    .param p1, "states"    # I

    .line 386
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->clearMetaKeyStates(I)Z

    move-result v0

    return v0
.end method

.method public whitelist closeConnection()V
    .locals 0

    .line 462
    return-void
.end method

.method public whitelist commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .line 308
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    move-result v0

    return v0
.end method

.method public whitelist commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;

    .line 466
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 467
    return v1

    .line 470
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 471
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v0}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v0

    .line 472
    .local v0, "imsInternal":Landroid/inputmethodservice/InputMethodServiceInternal;
    if-nez v0, :cond_1

    .line 473
    return v1

    .line 475
    :cond_1
    invoke-interface {v0, p1, p0}, Landroid/inputmethodservice/InputMethodServiceInternal;->exposeContent(Landroid/view/inputmethod/InputContentInfo;Landroid/view/inputmethod/InputConnection;)V

    .line 478
    .end local v0    # "imsInternal":Landroid/inputmethodservice/InputMethodServiceInternal;
    :cond_2
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    .line 479
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/IInputContextInvoker;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 480
    .local v0, "value":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "commitContent()"

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrFalse(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Z

    move-result v1

    return v1
.end method

.method public whitelist commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .line 313
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result v0

    return v0
.end method

.method public whitelist commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 279
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    .line 280
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 281
    invoke-direct {p0}, Landroid/inputmethodservice/RemoteInputConnection;->notifyUserActionIfNecessary()V

    .line 283
    :cond_0
    return v0
.end method

.method public whitelist commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 289
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    .line 290
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/IInputContextInvoker;->commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    move-result v0

    .line 291
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Landroid/inputmethodservice/RemoteInputConnection;->notifyUserActionIfNecessary()V

    .line 294
    :cond_0
    return v0
.end method

.method public whitelist deleteSurroundingText(II)Z
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 391
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->deleteSurroundingText(II)Z

    move-result v0

    return v0
.end method

.method public whitelist deleteSurroundingTextInCodePoints(II)Z
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 396
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->deleteSurroundingTextInCodePoints(II)Z

    move-result v0

    return v0
.end method

.method public whitelist endBatchEdit()Z
    .locals 1

    .line 372
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->endBatchEdit()Z

    move-result v0

    return v0
.end method

.method public whitelist finishComposingText()Z
    .locals 1

    .line 362
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->finishComposingText()Z

    move-result v0

    return v0
.end method

.method public whitelist getCursorCapsMode(I)I
    .locals 7
    .param p1, "reqModes"    # I

    .line 239
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x0

    return v0

    .line 243
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->getCursorCapsMode(I)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 244
    .local v0, "value":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Integer;>;"
    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getCursorCapsMode()"

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrZero(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)I

    move-result v1

    .line 247
    .local v1, "result":I
    iget-object v2, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v2}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v2

    .line 248
    .local v2, "imsInternal":Landroid/inputmethodservice/InputMethodServiceInternal;
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    invoke-static {p1, v1}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetCursorCapsModeProto(II)[B

    move-result-object v3

    .line 251
    .local v3, "icProto":[B
    const-string v4, "RemoteInputConnection#getCursorCapsMode"

    invoke-interface {v2, v4, v3}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    .line 254
    .end local v3    # "icProto":[B
    :cond_1
    return v1
.end method

.method public whitelist getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 7
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .line 259
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x0

    return-object v0

    .line 263
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 264
    .local v0, "value":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/view/inputmethod/ExtractedText;>;"
    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getExtractedText()"

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/ExtractedText;

    .line 267
    .local v1, "result":Landroid/view/inputmethod/ExtractedText;
    iget-object v2, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v2}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v2

    .line 268
    .local v2, "imsInternal":Landroid/inputmethodservice/InputMethodServiceInternal;
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    invoke-static {p1, p2, v1}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetExtractedTextProto(Landroid/view/inputmethod/ExtractedTextRequest;ILandroid/view/inputmethod/ExtractedText;)[B

    move-result-object v3

    .line 271
    .local v3, "icProto":[B
    const-string v4, "RemoteInputConnection#getExtractedText"

    invoke-interface {v2, v4, v3}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    .line 274
    .end local v3    # "icProto":[B
    :cond_1
    return-object v1
.end method

.method public whitelist getHandler()Landroid/os/Handler;
    .locals 1

    .line 456
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSelectedText(I)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "flags"    # I

    .line 175
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x0

    return-object v0

    .line 179
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->getSelectedText(I)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 180
    .local v0, "value":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/CharSequence;>;"
    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getSelectedText()"

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 183
    .local v1, "result":Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v2}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v2

    .line 184
    .local v2, "imsInternal":Landroid/inputmethodservice/InputMethodServiceInternal;
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    invoke-static {p1, v1}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetSelectedTextProto(ILjava/lang/CharSequence;)[B

    move-result-object v3

    .line 187
    .local v3, "icProto":[B
    const-string v4, "RemoteInputConnection#getSelectedText"

    invoke-interface {v2, v4, v3}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    .line 190
    .end local v3    # "icProto":[B
    :cond_1
    return-object v1
.end method

.method public whitelist getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .locals 7
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I
    .param p3, "flags"    # I

    .line 208
    const-string v0, " is invalid and always results in null result."

    const-string v1, "RemoteInputConnection"

    if-gez p1, :cond_0

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beforeLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    if-gez p2, :cond_1

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afterLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    const/4 v0, 0x0

    return-object v0

    .line 222
    :cond_2
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/IInputContextInvoker;->getSurroundingText(III)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 224
    .local v0, "value":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/view/inputmethod/SurroundingText;>;"
    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getSurroundingText()"

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/SurroundingText;

    .line 227
    .local v1, "result":Landroid/view/inputmethod/SurroundingText;
    iget-object v2, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v2}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v2

    .line 228
    .local v2, "imsInternal":Landroid/inputmethodservice/InputMethodServiceInternal;
    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 229
    invoke-static {p1, p2, p3, v1}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetSurroundingTextProto(IIILandroid/view/inputmethod/SurroundingText;)[B

    move-result-object v3

    .line 231
    .local v3, "icProto":[B
    const-string v4, "RemoteInputConnection#getSurroundingText"

    invoke-interface {v2, v4, v3}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    .line 234
    .end local v3    # "icProto":[B
    :cond_3
    return-object v1
.end method

.method public whitelist getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .line 123
    if-gez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is invalid and always results in null result."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteInputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 131
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->getTextAfterCursor(II)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 132
    .local v0, "value":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/CharSequence;>;"
    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getTextAfterCursor()"

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 135
    .local v1, "result":Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v2}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v2

    .line 136
    .local v2, "imsInternal":Landroid/inputmethodservice/InputMethodServiceInternal;
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    invoke-static {p1, p2, v1}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetTextAfterCursorProto(IILjava/lang/CharSequence;)[B

    move-result-object v3

    .line 139
    .local v3, "icProto":[B
    const-string v4, "RemoteInputConnection#getTextAfterCursor"

    invoke-interface {v2, v4, v3}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    .line 142
    .end local v3    # "icProto":[B
    :cond_2
    return-object v1
.end method

.method public whitelist getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .line 151
    if-gez p1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is invalid and always results in null result."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteInputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    const/4 v0, 0x0

    return-object v0

    .line 159
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->getTextBeforeCursor(II)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 160
    .local v0, "value":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/CharSequence;>;"
    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getTextBeforeCursor()"

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 163
    .local v1, "result":Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v2}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v2

    .line 164
    .local v2, "imsInternal":Landroid/inputmethodservice/InputMethodServiceInternal;
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    invoke-static {p1, p2, v1}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetTextBeforeCursorProto(IILjava/lang/CharSequence;)[B

    move-result-object v3

    .line 167
    .local v3, "icProto":[B
    const-string v4, "RemoteInputConnection#getTextBeforeCursor"

    invoke-interface {v2, v4, v3}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    .line 170
    .end local v3    # "icProto":[B
    :cond_2
    return-object v1
.end method

.method public blacklist isSameConnection(Lcom/android/internal/view/IInputContext;)Z
    .locals 1
    .param p1, "inputContext"    # Lcom/android/internal/view/IInputContext;

    .line 108
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->isSameConnection(Lcom/android/internal/view/IInputContext;)Z

    move-result v0

    return v0
.end method

.method public whitelist performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 328
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->performContextMenuAction(I)Z

    move-result v0

    return v0
.end method

.method public whitelist performEditorAction(I)Z
    .locals 1
    .param p1, "actionCode"    # I

    .line 323
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->performEditorAction(I)Z

    move-result v0

    return v0
.end method

.method public whitelist performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 412
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist performSpellCheck()Z
    .locals 1

    .line 407
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->performSpellCheck()Z

    move-result v0

    return v0
.end method

.method public whitelist reportFullscreenMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist requestCursorUpdates(I)Z
    .locals 9
    .param p1, "cursorUpdateMode"    # I

    .line 417
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 418
    return v1

    .line 421
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v0}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v0

    .line 422
    .local v0, "ims":Landroid/inputmethodservice/InputMethodServiceInternal;
    if-nez v0, :cond_1

    .line 423
    return v1

    .line 426
    :cond_1
    invoke-interface {v0}, Landroid/inputmethodservice/InputMethodServiceInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 427
    .local v1, "displayId":I
    iget-object v2, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    .line 428
    invoke-virtual {v2, p1, v1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->requestCursorUpdates(II)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    .line 429
    .local v2, "value":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    iget-object v6, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v7, 0x7d0

    const-string v4, "RemoteInputConnection"

    const-string v5, "requestCursorUpdates()"

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrFalse(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Z

    move-result v3

    return v3
.end method

.method public whitelist requestCursorUpdates(II)Z
    .locals 9
    .param p1, "cursorUpdateMode"    # I
    .param p2, "cursorUpdateFilter"    # I

    .line 437
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 438
    return v1

    .line 441
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v0}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v0

    .line 442
    .local v0, "ims":Landroid/inputmethodservice/InputMethodServiceInternal;
    if-nez v0, :cond_1

    .line 443
    return v1

    .line 446
    :cond_1
    invoke-interface {v0}, Landroid/inputmethodservice/InputMethodServiceInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 447
    .local v1, "displayId":I
    iget-object v2, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    .line 448
    invoke-virtual {v2, p1, p2, v1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->requestCursorUpdates(III)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    .line 449
    .local v2, "value":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    iget-object v6, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v7, 0x7d0

    const-string v4, "RemoteInputConnection"

    const-string v5, "requestCursorUpdates()"

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrFalse(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Z

    move-result v3

    return v3
.end method

.method public whitelist sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 377
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 378
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 379
    invoke-direct {p0}, Landroid/inputmethodservice/RemoteInputConnection;->notifyUserActionIfNecessary()V

    .line 381
    :cond_0
    return v0
.end method

.method public whitelist setComposingRegion(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 333
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->setComposingRegion(II)Z

    move-result v0

    return v0
.end method

.method public whitelist setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 338
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/IInputContextInvoker;->setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z

    move-result v0

    return v0
.end method

.method public whitelist setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 343
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    .line 344
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 345
    invoke-direct {p0}, Landroid/inputmethodservice/RemoteInputConnection;->notifyUserActionIfNecessary()V

    .line 347
    :cond_0
    return v0
.end method

.method public whitelist setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 353
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/IInputContextInvoker;->setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    move-result v0

    .line 354
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 355
    invoke-direct {p0}, Landroid/inputmethodservice/RemoteInputConnection;->notifyUserActionIfNecessary()V

    .line 357
    :cond_0
    return v0
.end method

.method public whitelist setImeConsumesInput(Z)Z
    .locals 1
    .param p1, "imeConsumesInput"    # Z

    .line 489
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->setImeConsumesInput(Z)Z

    move-result v0

    return v0
.end method

.method public whitelist setSelection(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 318
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->setSelection(II)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteInputConnection{idHash=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 496
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    return-object v0
.end method
