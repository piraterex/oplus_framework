.class public interface abstract Landroid/view/inputmethod/InputConnection;
.super Ljava/lang/Object;
.source "InputConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputConnection$CursorUpdateFilter;,
        Landroid/view/inputmethod/InputConnection$CursorUpdateMode;,
        Landroid/view/inputmethod/InputConnection$GetTextType;
    }
.end annotation


# static fields
.field public static final whitelist CURSOR_UPDATE_FILTER_CHARACTER_BOUNDS:I = 0x8

.field public static final whitelist CURSOR_UPDATE_FILTER_EDITOR_BOUNDS:I = 0x4

.field public static final whitelist CURSOR_UPDATE_FILTER_INSERTION_MARKER:I = 0x10

.field public static final whitelist CURSOR_UPDATE_IMMEDIATE:I = 0x1

.field public static final whitelist CURSOR_UPDATE_MONITOR:I = 0x2

.field public static final whitelist GET_EXTRACTED_TEXT_MONITOR:I = 0x1

.field public static final whitelist GET_TEXT_WITH_STYLES:I = 0x1

.field public static final whitelist INPUT_CONTENT_GRANT_READ_URI_PERMISSION:I = 0x1


# virtual methods
.method public abstract whitelist beginBatchEdit()Z
.end method

.method public abstract whitelist clearMetaKeyStates(I)Z
.end method

.method public abstract whitelist closeConnection()V
.end method

.method public abstract whitelist commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
.end method

.method public abstract whitelist commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
.end method

.method public abstract whitelist commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
.end method

.method public abstract whitelist commitText(Ljava/lang/CharSequence;I)Z
.end method

.method public whitelist commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 698
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public abstract whitelist deleteSurroundingText(II)Z
.end method

.method public abstract whitelist deleteSurroundingTextInCodePoints(II)Z
.end method

.method public abstract whitelist endBatchEdit()Z
.end method

.method public abstract whitelist finishComposingText()Z
.end method

.method public abstract whitelist getCursorCapsMode(I)I
.end method

.method public abstract whitelist getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
.end method

.method public abstract whitelist getHandler()Landroid/os/Handler;
.end method

.method public abstract whitelist getSelectedText(I)Ljava/lang/CharSequence;
.end method

.method public whitelist getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .locals 8
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I
    .param p3, "flags"    # I

    .line 320
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 321
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 323
    invoke-interface {p0, p1, p3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 324
    .local v0, "textBeforeCursor":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 325
    return-object v1

    .line 327
    :cond_0
    invoke-interface {p0, p2, p3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 328
    .local v2, "textAfterCursor":Ljava/lang/CharSequence;
    if-nez v2, :cond_1

    .line 329
    return-object v1

    .line 331
    :cond_1
    invoke-interface {p0, p3}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 332
    .local v1, "selectedText":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 333
    const-string v1, ""

    .line 335
    :cond_2
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    .line 336
    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 337
    .local v3, "surroundingText":Ljava/lang/CharSequence;
    new-instance v4, Landroid/view/inputmethod/SurroundingText;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 338
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, -0x1

    invoke-direct {v4, v3, v5, v6, v7}, Landroid/view/inputmethod/SurroundingText;-><init>(Ljava/lang/CharSequence;III)V

    .line 337
    return-object v4
.end method

.method public abstract whitelist getTextAfterCursor(II)Ljava/lang/CharSequence;
.end method

.method public abstract whitelist getTextBeforeCursor(II)Ljava/lang/CharSequence;
.end method

.method public abstract whitelist performContextMenuAction(I)Z
.end method

.method public abstract whitelist performEditorAction(I)Z
.end method

.method public abstract whitelist performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public whitelist performSpellCheck()Z
    .locals 1

    .line 947
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist reportFullscreenMode(Z)Z
.end method

.method public abstract whitelist requestCursorUpdates(I)Z
.end method

.method public whitelist requestCursorUpdates(II)Z
    .locals 1
    .param p1, "cursorUpdateMode"    # I
    .param p2, "cursorUpdateFilter"    # I

    .line 1104
    if-nez p2, :cond_0

    .line 1105
    invoke-interface {p0, p1}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(I)Z

    move-result v0

    return v0

    .line 1107
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist sendKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract whitelist setComposingRegion(II)Z
.end method

.method public whitelist setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 621
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    move-result v0

    return v0
.end method

.method public abstract whitelist setComposingText(Ljava/lang/CharSequence;I)Z
.end method

.method public whitelist setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 571
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public whitelist setImeConsumesInput(Z)Z
    .locals 1
    .param p1, "imeConsumesInput"    # Z

    .line 1209
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist setSelection(II)Z
.end method

.method public whitelist takeSnapshot()Landroid/view/inputmethod/TextSnapshot;
    .locals 1

    .line 1232
    const/4 v0, 0x0

    return-object v0
.end method
