.class public interface abstract Landroid/view/inputmethod/InputMethodSession;
.super Ljava/lang/Object;
.source "InputMethodSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodSession$EventCallback;
    }
.end annotation


# virtual methods
.method public abstract whitelist appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract whitelist dispatchGenericMotionEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V
.end method

.method public abstract whitelist dispatchKeyEvent(ILandroid/view/KeyEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V
.end method

.method public abstract whitelist dispatchTrackballEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V
.end method

.method public abstract whitelist displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
.end method

.method public abstract whitelist finishInput()V
.end method

.method public blacklist invalidateInputInternal(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)V
    .locals 0
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "sessionId"    # I

    .line 217
    return-void
.end method

.method public abstract blacklist removeImeSurface()V
.end method

.method public abstract whitelist toggleSoftInput(II)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist updateCursor(Landroid/graphics/Rect;)V
.end method

.method public abstract whitelist updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
.end method

.method public abstract whitelist updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
.end method

.method public abstract whitelist updateSelection(IIIIII)V
.end method

.method public abstract whitelist viewClicked(Z)V
.end method
