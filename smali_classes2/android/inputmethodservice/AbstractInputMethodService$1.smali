.class Landroid/inputmethodservice/AbstractInputMethodService$1;
.super Ljava/lang/Object;
.source "AbstractInputMethodService.java"

# interfaces
.implements Landroid/inputmethodservice/InputMethodServiceInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/AbstractInputMethodService;->createInputMethodServiceInternal()Landroid/inputmethodservice/InputMethodServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/inputmethodservice/AbstractInputMethodService;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/AbstractInputMethodService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/AbstractInputMethodService;

    .line 261
    iput-object p1, p0, Landroid/inputmethodservice/AbstractInputMethodService$1;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 276
    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$1;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/inputmethodservice/AbstractInputMethodService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public blacklist getContext()Landroid/content/Context;
    .locals 1

    .line 268
    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$1;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    return-object v0
.end method
