.class Landroid/inputmethodservice/InputMethodService$InputMethodServiceWrapper;
.super Ljava/lang/Object;
.source "InputMethodService.java"

# interfaces
.implements Landroid/inputmethodservice/IInputMethodServiceWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputMethodServiceWrapper"
.end annotation


# instance fields
.field private blacklist mImsExt:Landroid/inputmethodservice/IInputMethodServiceExt;

.field final synthetic blacklist this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method private constructor blacklist <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1

    .line 3987
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodServiceWrapper;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3989
    const-class v0, Landroid/inputmethodservice/IInputMethodServiceExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    .line 3990
    invoke-virtual {v0, p1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/inputmethodservice/IInputMethodServiceExt;

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodServiceWrapper;->mImsExt:Landroid/inputmethodservice/IInputMethodServiceExt;

    .line 3989
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/InputMethodService$InputMethodServiceWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService$InputMethodServiceWrapper;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-void
.end method


# virtual methods
.method public blacklist getExtImpl()Landroid/inputmethodservice/IInputMethodServiceExt;
    .locals 1

    .line 3993
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodServiceWrapper;->mImsExt:Landroid/inputmethodservice/IInputMethodServiceExt;

    return-object v0
.end method
