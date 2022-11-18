.class Landroid/inputmethodservice/IInputMethodServiceWrapper$1;
.super Ljava/lang/Object;
.source "IInputMethodServiceWrapper.java"

# interfaces
.implements Landroid/inputmethodservice/IInputMethodServiceExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/IInputMethodServiceWrapper;->getExtImpl()Landroid/inputmethodservice/IInputMethodServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/inputmethodservice/IInputMethodServiceWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/IInputMethodServiceWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/IInputMethodServiceWrapper;

    .line 24
    iput-object p1, p0, Landroid/inputmethodservice/IInputMethodServiceWrapper$1;->this$0:Landroid/inputmethodservice/IInputMethodServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
