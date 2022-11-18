.class final Landroid/view/ViewRootImpl$NativePreImeInputStage;
.super Landroid/view/ViewRootImpl$AsyncInputStage;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/InputQueue$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NativePreImeInputStage"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;
    .param p3, "traceCounter"    # Ljava/lang/String;

    .line 6411
    iput-object p1, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 6412
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl$AsyncInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 6413
    return-void
.end method


# virtual methods
.method public greylist-max-o onFinishedInputEvent(Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "handled"    # Z

    .line 6448
    move-object v0, p1

    check-cast v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6449
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-eqz p2, :cond_0

    .line 6450
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    .line 6451
    return-void

    .line 6453
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 6454
    return-void
.end method

.method protected greylist-max-o onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 4
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6417
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 6418
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/KeyEvent;

    .line 6422
    .local v0, "event":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->isBack(Landroid/view/InputEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 6424
    invoke-static {v2}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6425
    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 6426
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v2

    .line 6427
    .local v2, "topCallback":Landroid/window/OnBackInvokedCallback;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 6428
    if-eqz v2, :cond_1

    .line 6429
    invoke-interface {v2}, Landroid/window/OnBackInvokedCallback;->onBackInvoked()V

    .line 6430
    return v1

    .line 6434
    :cond_0
    const/4 v1, 0x2

    return v1

    .line 6439
    .end local v0    # "event":Landroid/view/KeyEvent;
    .end local v2    # "topCallback":Landroid/window/OnBackInvokedCallback;
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_2

    .line 6440
    iget-object v0, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0, v2, p1, v1, p0}, Landroid/view/InputQueue;->sendInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;ZLandroid/view/InputQueue$FinishedInputEventCallback;)V

    .line 6441
    const/4 v0, 0x3

    return v0

    .line 6443
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
