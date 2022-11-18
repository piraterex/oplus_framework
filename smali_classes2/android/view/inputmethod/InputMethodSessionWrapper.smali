.class final Landroid/view/inputmethod/InputMethodSessionWrapper;
.super Ljava/lang/Object;
.source "InputMethodSessionWrapper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InputMethodSessionWrapper"


# instance fields
.field private final blacklist mSession:Lcom/android/internal/view/IInputMethodSession;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/view/IInputMethodSession;)V
    .locals 0
    .param p1, "inputMethodSession"    # Lcom/android/internal/view/IInputMethodSession;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSessionWrapper;->mSession:Lcom/android/internal/view/IInputMethodSession;

    .line 47
    return-void
.end method

.method public static blacklist createOrNull(Lcom/android/internal/view/IInputMethodSession;)Landroid/view/inputmethod/InputMethodSessionWrapper;
    .locals 1
    .param p0, "inputMethodSession"    # Lcom/android/internal/view/IInputMethodSession;

    .line 59
    if-eqz p0, :cond_0

    new-instance v0, Landroid/view/inputmethod/InputMethodSessionWrapper;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/InputMethodSessionWrapper;-><init>(Lcom/android/internal/view/IInputMethodSession;)V

    goto :goto_0

    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0
.end method


# virtual methods
.method blacklist appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 102
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSessionWrapper;->mSession:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 3
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .line 84
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSessionWrapper;->mSession:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist finishInput()V
    .locals 3

    .line 66
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSessionWrapper;->mSession:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodSession;->finishInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)V
    .locals 3
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "sessionId"    # I

    .line 140
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSessionWrapper;->mSession:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSessionWrapper;->mSession:Lcom/android/internal/view/IInputMethodSession;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist updateCursor(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "newCursor"    # Landroid/graphics/Rect;

    .line 120
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSessionWrapper;->mSession:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputMethodSession;->updateCursor(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 3
    .param p1, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .line 75
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSessionWrapper;->mSession:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputMethodSession;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .line 93
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSessionWrapper;->mSession:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputMethodSession;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
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

    .line 130
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSessionWrapper;->mSession:Lcom/android/internal/view/IInputMethodSession;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodSession;->updateSelection(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist viewClicked(Z)V
    .locals 3
    .param p1, "focusChanged"    # Z

    .line 111
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSessionWrapper;->mSession:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputMethodSession;->viewClicked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
