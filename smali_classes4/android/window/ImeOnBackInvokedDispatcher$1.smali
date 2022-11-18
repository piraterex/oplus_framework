.class Landroid/window/ImeOnBackInvokedDispatcher$1;
.super Landroid/os/ResultReceiver;
.source "ImeOnBackInvokedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/window/ImeOnBackInvokedDispatcher;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/window/ImeOnBackInvokedDispatcher;


# direct methods
.method constructor blacklist <init>(Landroid/window/ImeOnBackInvokedDispatcher;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/window/ImeOnBackInvokedDispatcher;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Landroid/window/ImeOnBackInvokedDispatcher$1;->this$0:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 58
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$1;->this$0:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-virtual {v0}, Landroid/window/ImeOnBackInvokedDispatcher;->getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    .line 59
    .local v0, "dispatcher":Landroid/window/WindowOnBackInvokedDispatcher;
    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Landroid/window/ImeOnBackInvokedDispatcher$1;->this$0:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-static {v1, p1, p2, v0}, Landroid/window/ImeOnBackInvokedDispatcher;->-$$Nest$mreceive(Landroid/window/ImeOnBackInvokedDispatcher;ILandroid/os/Bundle;Landroid/window/OnBackInvokedDispatcher;)V

    .line 62
    :cond_0
    return-void
.end method
