.class public Lcom/oplus/multisearch/IOplusMultiSearchListener$Default;
.super Ljava/lang/Object;
.source "IOplusMultiSearchListener.java"

# interfaces
.implements Lcom/oplus/multisearch/IOplusMultiSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/multisearch/IOplusMultiSearchListener;
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

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public whitelist onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 0
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "surfaceControl"    # Landroid/view/SurfaceControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public whitelist onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public whitelist onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
