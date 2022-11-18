.class final Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerReceiver"
.end annotation


# instance fields
.field final greylist-max-o mDispatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mStrongRef:Landroid/app/LoadedApk$ReceiverDispatcher;


# direct methods
.method constructor greylist-max-o <init>(Landroid/app/LoadedApk$ReceiverDispatcher;Z)V
    .locals 1
    .param p1, "rd"    # Landroid/app/LoadedApk$ReceiverDispatcher;
    .param p2, "strong"    # Z

    .line 1726
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 1727
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    .line 1728
    if-eqz p2, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mStrongRef:Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 1729
    return-void
.end method


# virtual methods
.method public greylist-max-o performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .line 1735
    move-object/from16 v9, p4

    if-nez p1, :cond_0

    .line 1736
    const-string v0, "LoadedApk"

    const-string v1, "Null intent received"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    const/4 v0, 0x0

    move-object v10, p0

    move-object v11, v0

    .local v0, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_0

    .line 1739
    .end local v0    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_0
    move-object v10, p0

    iget-object v0, v10, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v11, v0

    .line 1741
    .local v11, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :goto_0
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    const-string v1, "ActivityThread"

    if-eqz v0, :cond_2

    .line 1750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiving broadcast "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1751
    if-eqz v11, :cond_1

    iget-object v2, v11, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1750
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    :cond_2
    if-eqz v11, :cond_3

    .line 1755
    move-object v1, v11

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroid/app/LoadedApk$ReceiverDispatcher;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    goto :goto_2

    .line 1762
    :cond_3
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_4

    const-string v0, "Finishing broadcast to unregistered receiver"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v8

    .line 1766
    .local v8, "mgr":Landroid/app/IActivityManager;
    if-eqz v9, :cond_5

    .line 1767
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v9, v0}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 1769
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v7

    move-object v1, v8

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-interface/range {v1 .. v7}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1772
    nop

    .line 1774
    .end local v8    # "mgr":Landroid/app/IActivityManager;
    :goto_2
    return-void

    .line 1770
    .restart local v8    # "mgr":Landroid/app/IActivityManager;
    :catch_0
    move-exception v0

    .line 1771
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 1779
    sget-object v0, Landroid/app/LoadedApkExtPlugin;->innerReceiverToString:Lcom/oplus/reflect/RefStaticMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoadedApk$ReceiverDispatcher;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
