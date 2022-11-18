.class public interface abstract Landroid/view/inputmethod/InputMethod;
.super Ljava/lang/Object;
.source "InputMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethod$SessionCallback;
    }
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.view.InputMethod"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.view.im"

.field public static final whitelist SHOW_EXPLICIT:I = 0x1

.field public static final whitelist SHOW_FORCED:I = 0x2

.field public static final blacklist TAG:Ljava/lang/String; = "InputMethod"


# virtual methods
.method public abstract whitelist attachToken(Landroid/os/IBinder;)V
.end method

.method public abstract whitelist bindInput(Landroid/view/inputmethod/InputBinding;)V
.end method

.method public blacklist canStartStylusHandwriting(I)V
    .locals 0
    .param p1, "requestId"    # I

    .line 404
    return-void
.end method

.method public abstract whitelist changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
.end method

.method public abstract whitelist createSession(Landroid/view/inputmethod/InputMethod$SessionCallback;)V
.end method

.method public blacklist dispatchStartInputWithToken(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;ZLandroid/os/IBinder;ILandroid/window/ImeOnBackInvokedDispatcher;)V
    .locals 0
    .param p1, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z
    .param p4, "startInputToken"    # Landroid/os/IBinder;
    .param p5, "navButtonFlags"    # I
    .param p6, "imeDispatcher"    # Landroid/window/ImeOnBackInvokedDispatcher;

    .line 250
    if-eqz p3, :cond_0

    .line 251
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputMethod;->restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputMethod;->startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 255
    :goto_0
    return-void
.end method

.method public blacklist finishStylusHandwriting()V
    .locals 0

    .line 429
    return-void
.end method

.method public abstract whitelist hideSoftInput(ILandroid/os/ResultReceiver;)V
.end method

.method public abstract blacklist hideSoftInputWithToken(ILandroid/os/ResultReceiver;Landroid/os/IBinder;)V
.end method

.method public blacklist initInkWindow()V
    .locals 0

    .line 421
    return-void
.end method

.method public blacklist initializeInternal(Landroid/os/IBinder;Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;IZI)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "privilegedOperations"    # Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    .param p3, "configChanges"    # I
    .param p4, "stylusHwSupported"    # Z
    .param p5, "navButtonFlags"    # I

    .line 117
    invoke-interface {p0, p1}, Landroid/view/inputmethod/InputMethod;->attachToken(Landroid/os/IBinder;)V

    .line 118
    return-void
.end method

.method public blacklist onCreateInlineSuggestionsRequest(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
    .locals 3
    .param p1, "requestInfo"    # Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .param p2, "cb"    # Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    .line 131
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInlineSuggestionsUnsupported()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethod"

    const-string v2, "Failed to call onInlineSuggestionsUnsupported."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist onNavButtonFlagsChanged(I)V
    .locals 0
    .param p1, "navButtonFlags"    # I

    .line 265
    return-void
.end method

.method public abstract whitelist restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
.end method

.method public abstract whitelist revokeSession(Landroid/view/inputmethod/InputMethodSession;)V
.end method

.method public abstract whitelist setSessionEnabled(Landroid/view/inputmethod/InputMethodSession;Z)V
.end method

.method public abstract whitelist showSoftInput(ILandroid/os/ResultReceiver;)V
.end method

.method public blacklist showSoftInputWithToken(ILandroid/os/ResultReceiver;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p3, "showInputToken"    # Landroid/os/IBinder;

    .line 334
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V

    .line 335
    return-void
.end method

.method public abstract whitelist startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
.end method

.method public blacklist startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "channel"    # Landroid/view/InputChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/InputChannel;",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .line 413
    .local p3, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    return-void
.end method

.method public abstract whitelist unbindInput()V
.end method
