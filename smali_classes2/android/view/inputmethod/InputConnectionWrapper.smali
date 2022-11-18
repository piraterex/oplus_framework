.class public Landroid/view/inputmethod/InputConnectionWrapper;
.super Ljava/lang/Object;
.source "InputConnectionWrapper.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# instance fields
.field final greylist-max-o mMutable:Z

.field private greylist-max-o mTarget:Landroid/view/inputmethod/InputConnection;


# direct methods
.method public constructor whitelist <init>(Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0
    .param p1, "target"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "mutable"    # Z

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean p2, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mMutable:Z

    .line 54
    iput-object p1, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist beginBatchEdit()Z
    .locals 1

    .line 271
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public whitelist clearMetaKeyStates(I)Z
    .locals 1
    .param p1, "states"    # I

    .line 298
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    move-result v0

    return v0
.end method

.method public whitelist closeConnection()V
    .locals 2

    .line 368
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_0

    .line 369
    const-string v0, "InputConnectionWrapper"

    const-string v1, "closeConnection:target inputconcection not init."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void

    .line 373
    :cond_0
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->closeConnection()V

    .line 374
    return-void
.end method

.method public whitelist commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .line 226
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    move-result v0

    return v0
.end method

.method public whitelist commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;

    .line 382
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .line 235
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result v0

    return v0
.end method

.method public whitelist commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 207
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public whitelist commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 217
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    move-result v0

    return v0
.end method

.method public whitelist deleteSurroundingText(II)Z
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 152
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    move-result v0

    return v0
.end method

.method public whitelist deleteSurroundingTextInCodePoints(II)Z
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 143
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingTextInCodePoints(II)Z

    move-result v0

    return v0
.end method

.method public whitelist endBatchEdit()Z
    .locals 1

    .line 280
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move-result v0

    return v0
.end method

.method public whitelist finishComposingText()Z
    .locals 1

    .line 198
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    move-result v0

    return v0
.end method

.method public whitelist getCursorCapsMode(I)I
    .locals 1
    .param p1, "reqModes"    # I

    .line 125
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v0

    return v0
.end method

.method public whitelist getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .line 134
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHandler()Landroid/os/Handler;
    .locals 2

    .line 348
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_0

    .line 349
    const-string v0, "InputConnectionWrapper"

    const-string v1, "getHandler:target inputconcection not init."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v0, 0x0

    return-object v0

    .line 353
    :cond_0
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSelectedText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "flags"    # I

    .line 103
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I
    .param p3, "flags"    # I

    .line 114
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 115
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 116
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "n"    # I
    .param p2, "flags"    # I

    .line 93
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 94
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "n"    # I
    .param p2, "flags"    # I

    .line 81
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 82
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 262
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    move-result v0

    return v0
.end method

.method public whitelist performEditorAction(I)Z
    .locals 1
    .param p1, "editorAction"    # I

    .line 253
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    move-result v0

    return v0
.end method

.method public whitelist performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 325
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist performSpellCheck()Z
    .locals 1

    .line 316
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->performSpellCheck()Z

    move-result v0

    return v0
.end method

.method public whitelist reportFullscreenMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .line 307
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    move-result v0

    return v0
.end method

.method public whitelist requestCursorUpdates(I)Z
    .locals 1
    .param p1, "cursorUpdateMode"    # I

    .line 334
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(I)Z

    move-result v0

    return v0
.end method

.method public whitelist sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 289
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist setComposingRegion(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 180
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    move-result v0

    return v0
.end method

.method public whitelist setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 189
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z

    move-result v0

    return v0
.end method

.method public whitelist setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 161
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public whitelist setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 171
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    move-result v0

    return v0
.end method

.method public whitelist setImeConsumesInput(Z)Z
    .locals 1
    .param p1, "imeConsumesInput"    # Z

    .line 391
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->setImeConsumesInput(Z)Z

    move-result v0

    return v0
.end method

.method public whitelist setSelection(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 244
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v0

    return v0
.end method

.method public whitelist setTarget(Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .param p1, "target"    # Landroid/view/inputmethod/InputConnection;

    .line 67
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mMutable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "not mutable"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    .line 71
    return-void
.end method
