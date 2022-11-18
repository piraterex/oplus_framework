.class Landroid/view/inputmethod/InputMethodManager$InputMethodManagerWrapper;
.super Ljava/lang/Object;
.source "InputMethodManager.java"

# interfaces
.implements Landroid/view/inputmethod/IInputMethodManagerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputMethodManagerWrapper"
.end annotation


# instance fields
.field private blacklist mImmExt:Landroid/view/inputmethod/IInputMethodManagerExt;

.field final synthetic blacklist this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method private constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 1

    .line 3873
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$InputMethodManagerWrapper;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3875
    const-class v0, Landroid/view/inputmethod/IInputMethodManagerExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    .line 3876
    invoke-virtual {v0, p1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/IInputMethodManagerExt;

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$InputMethodManagerWrapper;->mImmExt:Landroid/view/inputmethod/IInputMethodManagerExt;

    .line 3875
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$InputMethodManagerWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager$InputMethodManagerWrapper;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    return-void
.end method


# virtual methods
.method public blacklist getExtImpl()Landroid/view/inputmethod/IInputMethodManagerExt;
    .locals 1

    .line 3879
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$InputMethodManagerWrapper;->mImmExt:Landroid/view/inputmethod/IInputMethodManagerExt;

    return-object v0
.end method
