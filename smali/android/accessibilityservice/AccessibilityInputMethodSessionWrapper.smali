.class final Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;
.super Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;
.source "AccessibilityInputMethodSessionWrapper.java"


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/accessibilityservice/AccessibilityInputMethodSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$6rJ58BrwtlvbXFISNRLTVSGKcos(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;)V
    .locals 0

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doFinishSession()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$leImIQwBFx_Joi1nUXgEU37Wnrw(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;)V
    .locals 0

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doFinishInput()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityInputMethodSession;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "session"    # Landroid/accessibilityservice/AccessibilityInputMethodSession;

    .line 38
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 40
    invoke-static {p1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method private blacklist doFinishInput()V
    .locals 1

    .line 80
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityInputMethodSession;

    .line 81
    .local v0, "session":Landroid/accessibilityservice/AccessibilityInputMethodSession;
    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0}, Landroid/accessibilityservice/AccessibilityInputMethodSession;->finishInput()V

    .line 84
    :cond_0
    return-void
.end method

.method private blacklist doFinishSession()V
    .locals 2

    .line 96
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method private blacklist doInvalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .locals 1
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p3, "sessionId"    # I

    .line 111
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityInputMethodSession;

    .line 112
    .local v0, "session":Landroid/accessibilityservice/AccessibilityInputMethodSession;
    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityInputMethodSession;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    .line 115
    :cond_0
    return-void
.end method

.method private blacklist doUpdateSelection(IIIIII)V
    .locals 8
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .line 63
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityInputMethodSession;

    .line 64
    .local v0, "session":Landroid/accessibilityservice/AccessibilityInputMethodSession;
    if-eqz v0, :cond_0

    .line 65
    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/accessibilityservice/AccessibilityInputMethodSession;->updateSelection(IIIIII)V

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist finishInput()V
    .locals 2

    .line 72
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doFinishInput()V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    :goto_0
    return-void
.end method

.method public blacklist finishSession()V
    .locals 2

    .line 88
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doFinishSession()V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    :goto_0
    return-void
.end method

.method blacklist getSession()Landroid/accessibilityservice/AccessibilityInputMethodSession;
    .locals 1

    .line 46
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityInputMethodSession;

    return-object v0
.end method

.method public blacklist invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .locals 2
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p3, "sessionId"    # I

    .line 102
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doInvalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$invalidateInput$1$android-accessibilityservice-AccessibilityInputMethodSessionWrapper(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .locals 0
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p3, "sessionId"    # I

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doInvalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-void
.end method

.method synthetic blacklist lambda$updateSelection$0$android-accessibilityservice-AccessibilityInputMethodSessionWrapper(IIIIII)V
    .locals 0
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .line 56
    invoke-direct/range {p0 .. p6}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doUpdateSelection(IIIIII)V

    return-void
.end method

.method public blacklist updateSelection(IIIIII)V
    .locals 11
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .line 52
    move-object v8, p0

    iget-object v0, v8, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-direct/range {p0 .. p6}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doUpdateSelection(IIIIII)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v9, v8, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    new-instance v10, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda1;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;IIIIII)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    :goto_0
    return-void
.end method
