.class public Landroid/app/ITaskStackListener$Default;
.super Ljava/lang/Object;
.source "ITaskStackListener.java"

# interfaces
.implements Landroid/app/ITaskStackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ITaskStackListener;
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

    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onActivityDismissingDockedTask()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskId"    # I
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 0
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "requestedDisplayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public blacklist onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 0
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "requestedDisplayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public blacklist onActivityPinned(Ljava/lang/String;III)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "taskId"    # I
    .param p4, "stackId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist onActivityRequestedOrientationChanged(II)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "requestedOrientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    return-void
.end method

.method public blacklist onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .locals 0
    .param p1, "task"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "homeTaskVisible"    # Z
    .param p3, "clearedTask"    # Z
    .param p4, "wasVisible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist onActivityRotation(I)V
    .locals 0
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    return-void
.end method

.method public blacklist onActivityUnpinned()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    return-void
.end method

.method public blacklist onLockTaskModeChanged(I)V
    .locals 0
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    return-void
.end method

.method public blacklist onRecentTaskListFrozenChanged(Z)V
    .locals 0
    .param p1, "frozen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    return-void
.end method

.method public blacklist onRecentTaskListUpdated()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    return-void
.end method

.method public blacklist onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    return-void
.end method

.method public blacklist onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    return-void
.end method

.method public blacklist onTaskDisplayChanged(II)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "newDisplayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    return-void
.end method

.method public blacklist onTaskFocusChanged(IZ)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "focused"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    return-void
.end method

.method public blacklist onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    return-void
.end method

.method public blacklist onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    return-void
.end method

.method public blacklist onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    return-void
.end method

.method public blacklist onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    return-void
.end method

.method public blacklist onTaskRemoved(I)V
    .locals 0
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    return-void
.end method

.method public blacklist onTaskRequestedOrientationChanged(II)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "requestedOrientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    return-void
.end method

.method public blacklist onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "snapshot"    # Landroid/window/TaskSnapshot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    return-void
.end method

.method public blacklist onTaskStackChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    return-void
.end method
