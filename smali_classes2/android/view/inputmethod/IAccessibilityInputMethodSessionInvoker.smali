.class final Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
.super Ljava/lang/Object;
.source "IAccessibilityInputMethodSessionInvoker.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "IAccessibilityInputMethodSessionInvoker"


# instance fields
.field private final blacklist mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 40
    return-void
.end method

.method public static blacklist createOrNull(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    .locals 1
    .param p0, "session"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 52
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;-><init>(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method blacklist finishInput()V
    .locals 3

    .line 58
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;->finishInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IAccessibilityInputMethodSessionInvoker"

    const-string v2, "A11yIME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .locals 3
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p3, "sessionId"    # I

    .line 79
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IAccessibilityInputMethodSessionInvoker"

    const-string v2, "A11yIME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist updateSelection(IIIIII)V
    .locals 7
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "selStart"    # I
    .param p4, "selEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .line 68
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;->updateSelection(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IAccessibilityInputMethodSessionInvoker"

    const-string v2, "A11yIME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
