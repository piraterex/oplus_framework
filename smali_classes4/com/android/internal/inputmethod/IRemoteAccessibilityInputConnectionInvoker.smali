.class final Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;
.super Ljava/lang/Object;
.source "IRemoteAccessibilityInputConnectionInvoker.java"


# instance fields
.field private final blacklist mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

.field private final blacklist mSessionId:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .locals 0
    .param p1, "inputContext"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p2, "sessionId"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 39
    iput p2, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mSessionId:I

    .line 40
    return-void
.end method

.method public static blacklist create(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;
    .locals 2
    .param p0, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 51
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;-><init>(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-object v0
.end method


# virtual methods
.method public blacklist clearMetaKeyStates(I)V
    .locals 2
    .param p1, "states"    # I

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 230
    :goto_0
    return-void
.end method

.method public blacklist cloneWithSessionId(I)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;
    .locals 2
    .param p1, "sessionId"    # I

    .line 64
    new-instance v0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    iget-object v1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;-><init>(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-object v0
.end method

.method public blacklist commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 100
    :goto_0
    return-void
.end method

.method blacklist createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .locals 2

    .line 82
    new-instance v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iget v1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mSessionId:I

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;-><init>(I)V

    return-object v0
.end method

.method public blacklist deleteSurroundingText(II)V
    .locals 2
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 154
    :goto_0
    return-void
.end method

.method public blacklist getCursorCapsMode(I)Lcom/android/internal/infra/AndroidFuture;
    .locals 3
    .param p1, "reqModes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 211
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 215
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getSurroundingText(III)Lcom/android/internal/infra/AndroidFuture;
    .locals 7
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/view/inputmethod/SurroundingText;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 133
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/view/inputmethod/SurroundingText;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 138
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist isSameConnection(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;)Z
    .locals 3
    .param p1, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 74
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 75
    return v0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-interface {v1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public blacklist performContextMenuAction(I)V
    .locals 2
    .param p1, "id"    # I

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 196
    :goto_0
    return-void
.end method

.method public blacklist performEditorAction(I)V
    .locals 2
    .param p1, "actionCode"    # I

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 182
    :goto_0
    return-void
.end method

.method public blacklist sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 168
    :goto_0
    return-void
.end method

.method public blacklist setSelection(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 115
    :goto_0
    return-void
.end method
