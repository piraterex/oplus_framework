.class public Landroid/view/IOplusGestureAnimationRunner$Default;
.super Ljava/lang/Object;
.source "IOplusGestureAnimationRunner.java"

# interfaces
.implements Landroid/view/IOplusGestureAnimationRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IOplusGestureAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 14
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

.method public blacklist onAnimationCanceled()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist onAnimationStart(Landroid/view/IOplusGestureAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/SurfaceControl;)V
    .locals 0
    .param p1, "controller"    # Landroid/view/IOplusGestureAnimationController;
    .param p2, "apps"    # [Landroid/view/RemoteAnimationTarget;
    .param p3, "dims"    # [Landroid/view/SurfaceControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
