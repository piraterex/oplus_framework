.class public Landroid/window/ITaskFragmentOrganizer$Default;
.super Ljava/lang/Object;
.source "ITaskFragmentOrganizer.java"

# interfaces
.implements Landroid/window/ITaskFragmentOrganizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ITaskFragmentOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onActivityReparentToTask(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "activityIntent"    # Landroid/content/Intent;
    .param p3, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public blacklist onTaskFragmentAppeared(Landroid/window/TaskFragmentInfo;)V
    .locals 0
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public blacklist onTaskFragmentError(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "errorCallbackToken"    # Landroid/os/IBinder;
    .param p2, "exceptionBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist onTaskFragmentInfoChanged(Landroid/window/TaskFragmentInfo;)V
    .locals 0
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist onTaskFragmentParentInfoChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "fragmentToken"    # Landroid/os/IBinder;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist onTaskFragmentVanished(Landroid/window/TaskFragmentInfo;)V
    .locals 0
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method
