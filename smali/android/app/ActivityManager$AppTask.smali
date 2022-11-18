.class public Landroid/app/ActivityManager$AppTask;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppTask"
.end annotation


# instance fields
.field private greylist-max-o mAppTaskImpl:Landroid/app/IAppTask;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/app/IAppTask;)V
    .locals 0
    .param p1, "task"    # Landroid/app/IAppTask;

    .line 4998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4999
    iput-object p1, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    .line 5000
    return-void
.end method


# virtual methods
.method public whitelist finishAndRemoveTask()V
    .locals 2

    .line 5007
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    invoke-interface {v0}, Landroid/app/IAppTask;->finishAndRemoveTask()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5010
    nop

    .line 5011
    return-void

    .line 5008
    :catch_0
    move-exception v0

    .line 5009
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 2

    .line 5020
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    invoke-interface {v0}, Landroid/app/IAppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5021
    :catch_0
    move-exception v0

    .line 5022
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist moveToFront()V
    .locals 4

    .line 5034
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 5035
    .local v0, "thread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 5036
    .local v1, "appThread":Landroid/app/IApplicationThread;
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5037
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    invoke-interface {v3, v1, v2}, Landroid/app/IAppTask;->moveToFront(Landroid/app/IApplicationThread;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5040
    .end local v0    # "thread":Landroid/app/ActivityThread;
    .end local v1    # "appThread":Landroid/app/IApplicationThread;
    .end local v2    # "packageName":Ljava/lang/String;
    nop

    .line 5041
    return-void

    .line 5038
    :catch_0
    move-exception v0

    .line 5039
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setExcludeFromRecents(Z)V
    .locals 2
    .param p1, "exclude"    # Z

    .line 5079
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    invoke-interface {v0, p1}, Landroid/app/IAppTask;->setExcludeFromRecents(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5082
    nop

    .line 5083
    return-void

    .line 5080
    :catch_0
    move-exception v0

    .line 5081
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 5065
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 5066
    .local v0, "thread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    .line 5067
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    .line 5066
    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/Instrumentation;->execStartActivityFromAppTask(Landroid/content/Context;Landroid/os/IBinder;Landroid/app/IAppTask;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 5068
    return-void
.end method
