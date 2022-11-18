.class public final Lcom/android/internal/inputmethod/EditableInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "EditableInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/DumpableInputConnection;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "EditableInputConnection"


# instance fields
.field private blacklist mBatchEditNesting:I

.field public blacklist mEditableInputConnectionExt:Lcom/android/internal/inputmethod/IEditableInputConnectionExt;

.field private final blacklist mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textview"    # Landroid/widget/TextView;

    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 59
    const-class v0, Lcom/android/internal/inputmethod/IEditableInputConnectionExt;

    .line 60
    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/IEditableInputConnectionExt;

    iput-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mEditableInputConnectionExt:Lcom/android/internal/inputmethod/IEditableInputConnectionExt;

    .line 70
    iput-object p1, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    .line 71
    return-void
.end method


# virtual methods
.method public whitelist beginBatchEdit()Z
    .locals 2

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    if-ltz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 87
    iget v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    .line 88
    monitor-exit p0

    return v1

    .line 90
    :cond_0
    monitor-exit p0

    .line 91
    const/4 v0, 0x0

    return v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist clearMetaKeyStates(I)Z
    .locals 3
    .param p1, "states"    # I

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/EditableInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 131
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    .line 133
    .local v1, "kl":Landroid/text/method/KeyListener;
    if-eqz v1, :cond_1

    .line 135
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-interface {v1, v2, v0, p1}, Landroid/text/method/KeyListener;->clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_0

    .line 136
    :catch_0
    move-exception v2

    .line 141
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method public whitelist closeConnection()V
    .locals 1

    .line 118
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->closeConnection()V

    .line 119
    monitor-enter p0

    .line 120
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    if-lez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/EditableInputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 124
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    .line 125
    monitor-exit p0

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .line 147
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 148
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    .line 149
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .line 159
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 160
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 161
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist commitText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 209
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 210
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0

    .line 212
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    .line 213
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    .line 214
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    .line 216
    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 291
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 292
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 293
    .local v2, "editableText":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/inputmethod/EditableInputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 302
    .local v4, "selectedText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/EditableInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v5

    .line 303
    .local v5, "content":Landroid/text/Editable;
    if-eqz v5, :cond_0

    .line 304
    invoke-static {v5}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 305
    .local v6, "start":I
    invoke-static {v5}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    .line 306
    .local v7, "end":I
    const-wide v8, 0x10500000003L

    invoke-virtual {p1, v8, v9, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 307
    const-wide v8, 0x10500000004L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 309
    .end local v6    # "start":I
    .end local v7    # "end":I
    :cond_0
    const-wide v6, 0x10500000005L

    invoke-virtual {p0, v3}, Lcom/android/internal/inputmethod/EditableInputConnection;->getCursorCapsMode(I)I

    move-result v3

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 310
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 311
    return-void
.end method

.method public whitelist endBatchEdit()Z
    .locals 3

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 103
    iget v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    .line 104
    if-lez v0, :cond_0

    move v1, v2

    :cond_0
    monitor-exit p0

    return v1

    .line 106
    :cond_1
    monitor-exit p0

    .line 107
    return v1

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist endComposingRegionEditInternal()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->notifyContentCaptureTextChanged()V

    .line 114
    return-void
.end method

.method public whitelist getEditable()Landroid/text/Editable;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    .line 76
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    return-object v1

    .line 79
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .line 183
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 184
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 185
    .local v0, "et":Landroid/view/inputmethod/ExtractedText;
    iget-object v1, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V

    .line 189
    :cond_0
    return-object v0

    .line 192
    .end local v0    # "et":Landroid/view/inputmethod/ExtractedText;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 175
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 176
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 177
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist performEditorAction(I)Z
    .locals 1
    .param p1, "actionCode"    # I

    .line 168
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onEditorAction(I)V

    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 203
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist performSpellCheck()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onPerformSpellCheck()V

    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist requestCursorUpdates(I)Z
    .locals 4
    .param p1, "cursorUpdateMode"    # I

    .line 232
    const/16 v0, 0x1f

    .line 237
    .local v0, "knownFlagMask":I
    and-int/lit8 v1, p1, -0x20

    .line 238
    .local v1, "unknownFlags":I
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 243
    return v2

    .line 246
    :cond_0
    iget-object v3, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_1

    .line 250
    return v2

    .line 252
    :cond_1
    iget-object v2, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, p1}, Landroid/view/inputmethod/InputMethodManager;->setUpdateCursorAnchorInfoMode(I)V

    .line 253
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_4

    .line 254
    iget-object v2, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-nez v2, :cond_2

    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {v2}, Landroid/widget/TextView;->isInLayout()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 265
    :cond_3
    iget-object v2, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .line 268
    :cond_4
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method public whitelist requestCursorUpdates(II)Z
    .locals 1
    .param p1, "cursorUpdateMode"    # I
    .param p2, "cursorUpdateFilter"    # I

    .line 223
    or-int v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/inputmethod/EditableInputConnection;->requestCursorUpdates(I)Z

    move-result v0

    return v0
.end method

.method public whitelist sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 284
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mEditableInputConnectionExt:Lcom/android/internal/inputmethod/IEditableInputConnectionExt;

    iget-object v1, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IEditableInputConnectionExt;->handleSendKeyEvent(Landroid/widget/TextView;Landroid/view/KeyEvent;)V

    .line 285
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist setImeConsumesInput(Z)Z
    .locals 1
    .param p1, "imeConsumesInput"    # Z

    .line 273
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 274
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->setImeConsumesInput(Z)Z

    move-result v0

    return v0

    .line 276
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImeConsumesInput(Z)V

    .line 277
    const/4 v0, 0x1

    return v0
.end method
