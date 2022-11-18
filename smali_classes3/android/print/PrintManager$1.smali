.class Landroid/print/PrintManager$1;
.super Landroid/os/Handler;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/print/PrintManager;-><init>(Landroid/content/Context;Landroid/print/IPrintManager;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/print/PrintManager;


# direct methods
.method constructor blacklist <init>(Landroid/print/PrintManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0
    .param p1, "this$0"    # Landroid/print/PrintManager;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Landroid/os/Handler$Callback;
    .param p4, "async"    # Z

    .line 265
    iput-object p1, p0, Landroid/print/PrintManager$1;->this$0:Landroid/print/PrintManager;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .line 268
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 270
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 271
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;

    .line 273
    .local v1, "wrapper":Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;
    invoke-virtual {v1}, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->getListener()Landroid/print/PrintManager$PrintJobStateChangeListener;

    move-result-object v2

    .line 274
    .local v2, "listener":Landroid/print/PrintManager$PrintJobStateChangeListener;
    if-eqz v2, :cond_0

    .line 275
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/print/PrintJobId;

    .line 276
    .local v3, "printJobId":Landroid/print/PrintJobId;
    invoke-interface {v2, v3}, Landroid/print/PrintManager$PrintJobStateChangeListener;->onPrintJobStateChanged(Landroid/print/PrintJobId;)V

    .line 278
    .end local v3    # "printJobId":Landroid/print/PrintJobId;
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 281
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "wrapper":Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;
    .end local v2    # "listener":Landroid/print/PrintManager$PrintJobStateChangeListener;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
