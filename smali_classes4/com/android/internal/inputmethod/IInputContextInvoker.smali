.class public final Lcom/android/internal/inputmethod/IInputContextInvoker;
.super Ljava/lang/Object;
.source "IInputContextInvoker.java"


# instance fields
.field private final blacklist mIInputContext:Lcom/android/internal/view/IInputContext;

.field private final blacklist mSessionId:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/view/IInputContext;I)V
    .locals 0
    .param p1, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p2, "sessionId"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    .line 50
    iput p2, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mSessionId:I

    .line 51
    return-void
.end method

.method public static blacklist create(Lcom/android/internal/view/IInputContext;)Lcom/android/internal/inputmethod/IInputContextInvoker;
    .locals 2
    .param p0, "inputContext"    # Lcom/android/internal/view/IInputContext;

    .line 60
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v0, Lcom/android/internal/inputmethod/IInputContextInvoker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/inputmethod/IInputContextInvoker;-><init>(Lcom/android/internal/view/IInputContext;I)V

    return-object v0
.end method


# virtual methods
.method public blacklist beginBatchEdit()Z
    .locals 2

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputContext;->beginBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    const/4 v0, 0x1

    return v0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist clearMetaKeyStates(I)Z
    .locals 2
    .param p1, "states"    # I

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/view/IInputContext;->clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    const/4 v0, 0x1

    return v0

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist cloneWithSessionId(I)Lcom/android/internal/inputmethod/IInputContextInvoker;
    .locals 2
    .param p1, "sessionId"    # I

    .line 72
    new-instance v0, Lcom/android/internal/inputmethod/IInputContextInvoker;

    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;-><init>(Lcom/android/internal/view/IInputContext;I)V

    return-object v0
.end method

.method public blacklist commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 2
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/view/IInputContext;->commitCompletion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    const/4 v0, 0x1

    return v0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Lcom/android/internal/infra/AndroidFuture;
    .locals 7
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputContentInfo;",
            "I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 643
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 645
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/view/IInputContext;->commitContent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    goto :goto_0

    .line 646
    :catch_0
    move-exception v1

    .line 647
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 649
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 2
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/view/IInputContext;->commitCorrection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    const/4 v0, 0x1

    return v0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist commitText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/view/IInputContext;->commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    const/4 v0, 0x1

    return v0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    .line 254
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/view/IInputContext;->commitTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    const/4 v0, 0x1

    return v0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method blacklist createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .locals 2

    .line 90
    new-instance v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iget v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mSessionId:I

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;-><init>(I)V

    return-object v0
.end method

.method public blacklist deleteSurroundingText(II)Z
    .locals 2
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/view/IInputContext;->deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    const/4 v0, 0x1

    return v0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist deleteSurroundingTextInCodePoints(II)Z
    .locals 2
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/view/IInputContext;->deleteSurroundingTextInCodePoints(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    const/4 v0, 0x1

    return v0

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist endBatchEdit()Z
    .locals 2

    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputContext;->endBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    const/4 v0, 0x1

    return v0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist finishComposingText()Z
    .locals 2

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputContext;->finishComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    const/4 v0, 0x1

    return v0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getCursorCapsMode(I)Lcom/android/internal/infra/AndroidFuture;
    .locals 3
    .param p1, "reqModes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 191
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 193
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/view/IInputContext;->getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    goto :goto_0

    .line 194
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 197
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Lcom/android/internal/infra/AndroidFuture;
    .locals 3
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/ExtractedTextRequest;",
            "I)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/view/inputmethod/ExtractedText;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 215
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/view/inputmethod/ExtractedText;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/internal/view/IInputContext;->getExtractedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;ILcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_0

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 219
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getSelectedText(I)Lcom/android/internal/infra/AndroidFuture;
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 148
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/CharSequence;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/view/IInputContext;->getSelectedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 152
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getSurroundingText(III)Lcom/android/internal/infra/AndroidFuture;
    .locals 7
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/view/inputmethod/SurroundingText;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 172
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/view/inputmethod/SurroundingText;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/view/IInputContext;->getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 177
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getTextAfterCursor(II)Lcom/android/internal/infra/AndroidFuture;
    .locals 3
    .param p1, "length"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 107
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/CharSequence;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/internal/view/IInputContext;->getTextAfterCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 111
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getTextBeforeCursor(II)Lcom/android/internal/infra/AndroidFuture;
    .locals 3
    .param p1, "length"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 128
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/CharSequence;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/internal/view/IInputContext;->getTextBeforeCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 132
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist isSameConnection(Lcom/android/internal/view/IInputContext;)Z
    .locals 3
    .param p1, "inputContext"    # Lcom/android/internal/view/IInputContext;

    .line 82
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 83
    return v0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputContext;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public blacklist performContextMenuAction(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/view/IInputContext;->performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    const/4 v0, 0x1

    return v0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist performEditorAction(I)Z
    .locals 2
    .param p1, "actionCode"    # I

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/view/IInputContext;->performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    const/4 v0, 0x1

    return v0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 576
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/view/IInputContext;->performPrivateCommand(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    const/4 v0, 0x1

    return v0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist performSpellCheck()Z
    .locals 2

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputContext;->performSpellCheck(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    const/4 v0, 0x1

    return v0

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist requestCursorUpdates(II)Lcom/android/internal/infra/AndroidFuture;
    .locals 3
    .param p1, "cursorUpdateMode"    # I
    .param p2, "imeDisplayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 595
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 597
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/internal/view/IInputContext;->requestCursorUpdates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    goto :goto_0

    .line 599
    :catch_0
    move-exception v1

    .line 600
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 602
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist requestCursorUpdates(III)Lcom/android/internal/infra/AndroidFuture;
    .locals 7
    .param p1, "cursorUpdateMode"    # I
    .param p2, "cursorUpdateFilter"    # I
    .param p3, "imeDisplayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 619
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 621
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/view/IInputContext;->requestCursorUpdatesWithFilter(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    goto :goto_0

    .line 623
    :catch_0
    move-exception v1

    .line 624
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 626
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/view/IInputContext;->sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    const/4 v0, 0x1

    return v0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setComposingRegion(II)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setComposingRegion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    const/4 v0, 0x1

    return v0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    .line 380
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    .line 379
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/view/IInputContext;->setComposingRegionWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    const/4 v0, 0x1

    return v0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    const/4 v0, 0x1

    return v0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    .line 420
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/view/IInputContext;->setComposingTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    const/4 v0, 0x1

    return v0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setImeConsumesInput(Z)Z
    .locals 2
    .param p1, "imeConsumesInput"    # Z

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/view/IInputContext;->setImeConsumesInput(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    const/4 v0, 0x1

    return v0

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setSelection(II)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    const/4 v0, 0x1

    return v0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method
