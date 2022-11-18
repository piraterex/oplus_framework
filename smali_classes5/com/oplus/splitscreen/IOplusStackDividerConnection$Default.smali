.class public Lcom/oplus/splitscreen/IOplusStackDividerConnection$Default;
.super Ljava/lang/Object;
.source "IOplusStackDividerConnection.java"

# interfaces
.implements Lcom/oplus/splitscreen/IOplusStackDividerConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/IOplusStackDividerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist dismissSplitScreenMode(I)V
    .locals 0
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public whitelist exitSplitScreen(II)V
    .locals 0
    .param p1, "taskToTop"    # I
    .param p2, "exitReason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public whitelist moveTaskAndIntentActivityToSplitScreen(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/hardware/HardwareBuffer;IZILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "sideTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "sideSnapshotBuffer"    # Landroid/hardware/HardwareBuffer;
    .param p3, "colorSpace"    # I
    .param p4, "containsSecureLayers"    # Z
    .param p5, "mainTaskId"    # I
    .param p6, "mainPendingIntent"    # Landroid/app/PendingIntent;
    .param p7, "mainFillInIntent"    # Landroid/content/Intent;
    .param p8, "options"    # Landroid/os/Bundle;
    .param p9, "sidePosition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public whitelist moveTaskToSplitStage(IZ)V
    .locals 0
    .param p1, "dragTaskId"    # I
    .param p2, "moveDragTasktoTopOrLeftStage"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public whitelist moveTasksToSplitStages(IIII)V
    .locals 0
    .param p1, "mainTaskId"    # I
    .param p2, "sideTaskId"    # I
    .param p3, "mainPosition"    # I
    .param p4, "dividerPosition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public whitelist moveToSplitScreen(ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "mainTaskId"    # I
    .param p2, "sidePendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "sideFillInIntent"    # Landroid/content/Intent;
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "sidePosition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public whitelist needInterceptStartForSplitScreen(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "calledPkg"    # Ljava/lang/String;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "needIntercept"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setDividerShow(Z)V
    .locals 0
    .param p1, "show"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public whitelist showNotSupportSplitWarn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "lableName"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public whitelist startPairIntent(Landroid/content/Intent;Landroid/content/Intent;IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "intent1"    # Landroid/content/Intent;
    .param p2, "intent2"    # Landroid/content/Intent;
    .param p3, "userId1"    # I
    .param p4, "userId2"    # I
    .param p5, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public whitelist startTask(IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "position"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public whitelist toggleSplitScreen(I)V
    .locals 0
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method
