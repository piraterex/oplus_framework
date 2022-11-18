.class Landroid/inputmethodservice/KeyboardView$3;
.super Ljava/lang/Object;
.source "KeyboardView.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/KeyboardView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/inputmethodservice/KeyboardView;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/KeyboardView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/KeyboardView;

    .line 1108
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView$3;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onKey(I[I)V
    .locals 1
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .line 1110
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$3;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmKeyboardActionListener(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 1111
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$3;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$mdismissPopupKeyboard(Landroid/inputmethodservice/KeyboardView;)V

    .line 1112
    return-void
.end method

.method public whitelist onPress(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .line 1124
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$3;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmKeyboardActionListener(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onPress(I)V

    .line 1125
    return-void
.end method

.method public whitelist onRelease(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .line 1127
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$3;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmKeyboardActionListener(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 1128
    return-void
.end method

.method public whitelist onText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 1115
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$3;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmKeyboardActionListener(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 1116
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$3;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$mdismissPopupKeyboard(Landroid/inputmethodservice/KeyboardView;)V

    .line 1117
    return-void
.end method

.method public whitelist swipeDown()V
    .locals 0

    .line 1122
    return-void
.end method

.method public whitelist swipeLeft()V
    .locals 0

    .line 1119
    return-void
.end method

.method public whitelist swipeRight()V
    .locals 0

    .line 1120
    return-void
.end method

.method public whitelist swipeUp()V
    .locals 0

    .line 1121
    return-void
.end method
