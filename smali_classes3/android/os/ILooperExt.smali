.class public interface abstract Landroid/os/ILooperExt;
.super Ljava/lang/Object;
.source "ILooperExt.java"


# virtual methods
.method public blacklist initLoop(Ljava/lang/String;)V
    .locals 0
    .param p1, "threadName"    # Ljava/lang/String;

    .line 22
    return-void
.end method

.method public blacklist startLooperMessageMonitor(Landroid/os/Message;IZ)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "pid"    # I
    .param p3, "threadExist"    # Z

    .line 26
    return-void
.end method

.method public blacklist stopLooperMessageMonitor(Landroid/os/Message;IZ)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "pid"    # I
    .param p3, "threadExist"    # Z

    .line 30
    return-void
.end method
