.class Landroid/view/WindowId$FocusObserver$1;
.super Landroid/view/IWindowFocusObserver$Stub;
.source "WindowId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowId$FocusObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/WindowId$FocusObserver;


# direct methods
.method constructor blacklist <init>(Landroid/view/WindowId$FocusObserver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/WindowId$FocusObserver;

    .line 51
    iput-object p1, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    invoke-direct {p0}, Landroid/view/IWindowFocusObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist focusGained(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "inputToken"    # Landroid/os/IBinder;

    .line 56
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v0, v0, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v1, v1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowId;

    .line 58
    .local v1, "token":Landroid/view/WindowId;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v0, v0, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v0, v0, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v2, v2, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    invoke-virtual {v0, v1}, Landroid/view/WindowId$FocusObserver;->onFocusGained(Landroid/view/WindowId;)V

    .line 64
    :goto_0
    return-void

    .line 58
    .end local v1    # "token":Landroid/view/WindowId;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist focusLost(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "inputToken"    # Landroid/os/IBinder;

    .line 69
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v0, v0, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v1, v1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowId;

    .line 71
    .local v1, "token":Landroid/view/WindowId;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v0, v0, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v0, v0, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v2, v2, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    invoke-virtual {v0, v1}, Landroid/view/WindowId$FocusObserver;->onFocusLost(Landroid/view/WindowId;)V

    .line 77
    :goto_0
    return-void

    .line 71
    .end local v1    # "token":Landroid/view/WindowId;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
