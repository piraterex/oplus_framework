.class public Lcom/android/internal/view/IInputMethod$Default;
.super Ljava/lang/Object;
.source "IInputMethod.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist bindInput(Landroid/view/inputmethod/InputBinding;)V
    .locals 0
    .param p1, "binding"    # Landroid/view/inputmethod/InputBinding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist canStartStylusHandwriting(I)V
    .locals 0
    .param p1, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    .locals 0
    .param p1, "channel"    # Landroid/view/InputChannel;
    .param p2, "callback"    # Lcom/android/internal/view/IInputSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist finishStylusHandwriting()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist hideSoftInput(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "hideInputToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist initInkWindow()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist initializeInternal(Landroid/os/IBinder;Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;IZI)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "privOps"    # Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    .param p3, "configChanges"    # I
    .param p4, "stylusHwSupported"    # Z
    .param p5, "navigationBarFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist onCreateInlineSuggestionsRequest(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
    .locals 0
    .param p1, "requestInfo"    # Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .param p2, "cb"    # Lcom/android/internal/view/IInlineSuggestionsRequestCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist onNavButtonFlagsChanged(I)V
    .locals 0
    .param p1, "navButtonFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    .locals 0
    .param p1, "session"    # Lcom/android/internal/view/IInputMethodSession;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist showSoftInput(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "showInputToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist startInput(Landroid/os/IBinder;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;ZILandroid/window/ImeOnBackInvokedDispatcher;)V
    .locals 0
    .param p1, "startInputToken"    # Landroid/os/IBinder;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p4, "restarting"    # Z
    .param p5, "navigationBarFlags"    # I
    .param p6, "imeDispatcher"    # Landroid/window/ImeOnBackInvokedDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    .local p3, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    return-void
.end method

.method public blacklist unbindInput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
