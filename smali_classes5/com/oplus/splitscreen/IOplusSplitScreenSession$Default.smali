.class public Lcom/oplus/splitscreen/IOplusSplitScreenSession$Default;
.super Ljava/lang/Object;
.source "IOplusSplitScreenSession.java"

# interfaces
.implements Lcom/oplus/splitscreen/IOplusSplitScreenSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/IOplusSplitScreenSession;
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

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRecentUsedApp(IJZLjava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "maxNum"    # I
    .param p2, "period"    # J
    .param p4, "supportSplitScreen"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    .local p5, "exclude":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist maintainSplitToZoomTaskState(IZ)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "maintain"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist moveChildrenTaskToBack(I)Z
    .locals 1
    .param p1, "rootTaskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifySplitRootTaskId(III)V
    .locals 0
    .param p1, "root"    # I
    .param p2, "primary"    # I
    .param p3, "secondary"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist registerActivityMultiWindowAllowanceObserver(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "observer"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist registerStackDivider(Lcom/oplus/splitscreen/IOplusStackDividerConnection;)V
    .locals 0
    .param p1, "conn"    # Lcom/oplus/splitscreen/IOplusStackDividerConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public blacklist removeSelfSplitTaskIfNeed(II)V
    .locals 0
    .param p1, "toTopTaskId"    # I
    .param p2, "toBottomTaskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist requestSwitchToFullScreen(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestSwitchToSplitScreen(Landroid/os/IBinder;Lcom/oplus/app/SplitScreenParams;)Z
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "params"    # Lcom/oplus/app/SplitScreenParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSplitAnimatorStatus(II)V
    .locals 0
    .param p1, "animatorType"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist setSplitControlBarRegion(Landroid/graphics/Rect;Z)V
    .locals 0
    .param p1, "region"    # Landroid/graphics/Rect;
    .param p2, "isPrimary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist setSplitRequestedOrientation(I)V
    .locals 0
    .param p1, "requestedOrientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist setSplitRootTaskAlwaysOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist setWallpaperVisible(Z)V
    .locals 0
    .param p1, "show"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist startZoomWindowFromSplit(ILandroid/graphics/Rect;F)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist unregisterActivityMultiWindowAllowanceObserver(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "observer"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method
