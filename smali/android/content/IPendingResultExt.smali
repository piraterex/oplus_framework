.class public interface abstract Landroid/content/IPendingResultExt;
.super Ljava/lang/Object;
.source "IPendingResultExt.java"


# virtual methods
.method public blacklist finishNotOrderReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0
    .param p1, "who"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Ljava/lang/String;
    .param p4, "resultExtras"    # Landroid/os/Bundle;
    .param p5, "resultAbort"    # Z

    .line 42
    return-void
.end method

.method public blacklist getOrder()Z
    .locals 1

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setBroadcastState(II)V
    .locals 0
    .param p1, "flag"    # I
    .param p2, "state"    # I

    .line 37
    return-void
.end method

.method public blacklist setHascode(I)V
    .locals 0
    .param p1, "hasCode"    # I

    .line 25
    return-void
.end method

.method public blacklist setOrder(Z)V
    .locals 0
    .param p1, "OrderedHint"    # Z

    .line 29
    return-void
.end method
