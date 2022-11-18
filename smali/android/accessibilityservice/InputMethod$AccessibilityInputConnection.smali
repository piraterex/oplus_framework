.class public final Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;
.super Ljava/lang/Object;
.source "InputMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/InputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AccessibilityInputConnection"
.end annotation


# instance fields
.field private final blacklist mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

.field final synthetic blacklist this$0:Landroid/accessibilityservice/InputMethod;


# direct methods
.method constructor blacklist <init>(Landroid/accessibilityservice/InputMethod;Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accessibilityservice/InputMethod;
    .param p2, "ic"    # Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    .line 199
    iput-object p1, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->this$0:Landroid/accessibilityservice/InputMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p2, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    .line 201
    return-void
.end method


# virtual methods
.method public whitelist clearMetaKeyStates(I)V
    .locals 1
    .param p1, "states"    # I

    .line 483
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->clearMetaKeyStates(I)V

    .line 486
    :cond_0
    return-void
.end method

.method public whitelist commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 236
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    .line 239
    :cond_0
    return-void
.end method

.method public whitelist deleteSurroundingText(II)V
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 363
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->deleteSurroundingText(II)V

    .line 366
    :cond_0
    return-void
.end method

.method public whitelist getCursorCapsMode(I)I
    .locals 1
    .param p1, "reqModes"    # I

    .line 465
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->getCursorCapsMode(I)I

    move-result v0

    return v0

    .line 468
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I
    .param p3, "flags"    # I

    .line 306
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v0

    return-object v0

    .line 309
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist performContextMenuAction(I)V
    .locals 1
    .param p1, "id"    # I

    .line 431
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->performContextMenuAction(I)V

    .line 434
    :cond_0
    return-void
.end method

.method public whitelist performEditorAction(I)V
    .locals 1
    .param p1, "editorAction"    # I

    .line 417
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->performEditorAction(I)V

    .line 420
    :cond_0
    return-void
.end method

.method public whitelist sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 403
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)V

    .line 406
    :cond_0
    return-void
.end method

.method public whitelist setSelection(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 265
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->setSelection(II)V

    .line 268
    :cond_0
    return-void
.end method
