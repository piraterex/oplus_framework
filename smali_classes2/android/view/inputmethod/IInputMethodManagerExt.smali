.class public interface abstract Landroid/view/inputmethod/IInputMethodManagerExt;
.super Ljava/lang/Object;
.source "IInputMethodManagerExt.java"


# virtual methods
.method public blacklist adjustForceFlag(I)I
    .locals 0
    .param p1, "flags"    # I

    .line 23
    return p1
.end method

.method public blacklist adjustStartInputFlags(I)I
    .locals 0
    .param p1, "flags"    # I

    .line 49
    return p1
.end method

.method public blacklist attachInfoToEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 0
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .line 40
    return-void
.end method

.method public blacklist configDebug([Ljava/lang/String;)Z
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist invalidateInputToSynergy(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)V
    .locals 0
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "sessionId"    # I

    .line 34
    return-void
.end method

.method public blacklist logDebug(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 14
    return-void
.end method

.method public blacklist logDebugIme(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 17
    return-void
.end method

.method public blacklist logMethodCallers(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 20
    return-void
.end method

.method public blacklist needForceNewFocus()Z
    .locals 1

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onCallClickBeforeCheckFocus(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    return-void
.end method

.method public blacklist onCallShowBeforeCheckFocus(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    return-void
.end method

.method public blacklist updateCurrentRootView(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/ViewRootImpl;

    .line 37
    return-void
.end method

.method public blacklist updateCursorAnchorInfoToSynergy(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 0
    .param p1, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .line 31
    return-void
.end method
